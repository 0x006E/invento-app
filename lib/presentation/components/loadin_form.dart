import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/LoadInFormCubit/loadin_form_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoadInForm extends StatelessWidget {
  final bool isEdit;
  late final FormGroup form;
  final String? loadInId;
  final DateTime? dateTime;

  LoadInForm({
    super.key,
    this.isEdit = false,
    this.loadInId,
    String? vehicleNumber,
    String? invoiceNumber,
    List<LoadInProduct>? products,
    this.dateTime,
  }) {
    final productArray = products != null
        ? products
            .map((product) => fb.group({
                  'productId': [product.productId, Validators.required],
                  'quantity': [
                    product.quantity,
                    Validators.required,
                    Validators.min(1)
                  ],
                }))
            .toList()
        : [];
    form = fb.group({
      'products': fb.array([...productArray]),
      'vehicleNumber': [vehicleNumber, Validators.required],
      'invoiceNumber': [invoiceNumber, Validators.required],
    }, [
      Validators.required
    ]);
  }

  void handleSubmit(Map<String, dynamic> values, BuildContext context) {
    final String invoiceNumber = values['invoiceNumber'] as String;
    final String vehicleNumber = values['vehicleNumber'] as String;
    final List<LoadInProduct> products = (values['products'] as List<dynamic>)
        .map((e) => LoadInProduct(
            productId: e['productId'].toString(),
            quantity: e['quantity'] as int))
        .toList();
    if (isEdit) {
      context.read<LoadInFormCubit>().updateItem(
          loadInId: loadInId ?? '',
          dateTime: dateTime ?? DateTime.now(),
          invoiceNumber: invoiceNumber,
          vehicleNumber: vehicleNumber,
          products: products);
    } else {
      context.read<LoadInFormCubit>().addItem(
          invoiceNumber: invoiceNumber,
          vehicleNumber: vehicleNumber,
          products: products);
    }
  }

  @override
  Widget build(BuildContext context) {
    final logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    final logicalHeight = logicalScreenSize.height;

    return WillPopScope(
      onWillPop: () async {
        return BlocProvider.of<LoadInFormCubit>(context).state.status !=
            Status.loading;
      },
      child: SingleChildScrollView(
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 24.0, 32.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${isEdit ? 'Edit' : 'Add'} Load in',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    BlocBuilder<LoadInFormCubit, LoadInFormState>(
                      buildWhen: (previous, current) =>
                          current.status != Status.loading,
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: Size.zero, // Set this
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.all(4),
                          ),
                          child: Icon(FontAwesomeIcons.xmark),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<LoadInFormCubit, LoadInFormState>(
                  builder: (context, state) {
                switch (state.status) {
                  case Status.initial:
                    return BlocBuilder<GenericFormStepperCubit,
                        GenericFormStepperState>(
                      builder: (context, state) {
                        final stepperCubit =
                            context.watch<GenericFormStepperCubit>();
                        return ReactiveForm(
                          formGroup: form,
                          child: Stepper(
                            controlsBuilder: (BuildContext context,
                                ControlsDetails details) {
                              return Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: BlocBuilder<ProductCubit, ProductState>(
                                  builder: (context, pState) {
                                    return pState.maybeWhen(
                                      orElse: () => SizedBox.shrink(),
                                      loaded: (products) => Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: details.onStepContinue,
                                              child: Text(state.currentStep == 2
                                                  ? 'Send'
                                                  : 'Next'),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          if (state.currentStep != 0)
                                            Expanded(
                                              child: ElevatedButton(
                                                onPressed: details.onStepCancel,
                                                child: const Text('Back'),
                                              ),
                                            )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                            type: StepperType.vertical,
                            currentStep: state.currentStep,
                            onStepCancel: () => state.currentStep == 0
                                ? null
                                : stepperCubit.decrementStep(),
                            onStepContinue: () {
                              switch (state.currentStep) {
                                case 0:
                                  stepperCubit.incrementStep();
                                  break;
                                case 1:
                                  if (form.control('products').hasErrors) {
                                    form.control('products').markAllAsTouched();
                                  } else {
                                    stepperCubit.incrementStep();
                                  }
                                  break;
                                case 2:
                                  if (form.valid) {
                                    handleSubmit(form.value, context);
                                  } else {
                                    form.markAllAsTouched();
                                    logger.d(form.errors);
                                  }
                                  break;
                              }
                            },
                            onStepTapped: (step) => stepperCubit.setStep(step),
                            steps: getSteps(state.currentStep),
                          ),
                        );
                      },
                    );
                  case Status.error:
                    return SizedBox(
                      height: 0.3 * logicalHeight,
                      child: ErrorInfo(errorMessage: state.message),
                    );
                  case Status.success:
                    return SizedBox(
                      height: 0.3 * logicalHeight,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LottieBuilder.asset(
                              "assets/successLottie.json",
                              repeat: false,
                              height: 100,
                            ),
                            Text(
                              state.message,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  case Status.loading:
                    return SizedBox(
                      height: 0.3 * logicalHeight,
                      child: Center(
                        child: LoadingAnimationWidget.halfTriangleDot(
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    );
                }
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget _productsError(message, code) {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return SizedBox(
        height: 0.3 * logicalHeight,
        child: ErrorInfo(
          errorMessage: message,
          errorCode: code,
        ));
  }

  Widget _productsLoading() {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return SizedBox(
      height: 0.3 * logicalHeight,
      child: Center(
        child: LoadingAnimationWidget.halfTriangleDot(
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }

  List<Step> getSteps(int currentStep) {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return <Step>[
      Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Select Products"),
              Builder(builder: (context) {
                return ElevatedButton(
                    onPressed: () => context.read<ProductCubit>().fetch(),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size.zero, // Set this
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(4),
                    ),
                    child: Icon(
                      Icons.sync,
                      size: 14,
                    ));
              })
            ],
          ),
          content: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              return state.when(
                  loading: () => _productsLoading(),
                  loaded: (products) {
                    return ReactiveFormArray(
                      formArrayName: 'products',
                      builder: (context, formArray, child) {
                        return Container(
                          constraints:
                              BoxConstraints(maxHeight: logicalHeight * 0.35),
                          child: Scrollbar(
                            thickness: 5,
                            radius: Radius.circular(10),
                            scrollbarOrientation: ScrollbarOrientation.right,
                            child: SingleChildScrollView(
                              child: Column(
                                children: products.map((product) {
                                  final productGroup = fb.group({
                                    'productId': [
                                      product.id,
                                      Validators.required
                                    ],
                                    'quantity': [
                                      0,
                                      Validators.required,
                                      Validators.min(1)
                                    ],
                                  });
                                  final control = formArray.controls
                                      .map((i) => i as FormGroup)
                                      .where(
                                        (element) =>
                                            element
                                                .control('productId')
                                                .value ==
                                            product.id,
                                      );
                                  final controlExists = control.isNotEmpty;
                                  return CheckboxListTile(
                                    title: Text(product.name),
                                    value: controlExists,
                                    onChanged: (value) {
                                      if (value == true) {
                                        formArray.add(productGroup);
                                        productGroup.markAllAsTouched();
                                      } else {
                                        formArray.remove(control.first);
                                      }
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  error: (message, code) => _productsError(message, code));
            },
          )),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Add Quantities"),
        content: ReactiveFormArray(
            formArrayName: 'products',
            builder: (context, formArray, child) {
              return Container(
                constraints: BoxConstraints(maxHeight: logicalHeight * 0.35),
                child: Scrollbar(
                  thickness: 5,
                  radius: Radius.circular(10),
                  scrollbarOrientation: ScrollbarOrientation.right,
                  child: SingleChildScrollView(
                    child: Column(
                      children: formArray.controls
                          .map((i) => i as FormGroup)
                          .map((group) => Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: BlocBuilder<ProductCubit,
                                          ProductState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              orElse: () => SizedBox.shrink(),
                                              loaded: (products) => Text(
                                                  products
                                                      .where((element) =>
                                                          element.id ==
                                                          group
                                                              .control(
                                                                  'productId')
                                                              .value)
                                                      .first
                                                      .name,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14)));
                                        },
                                      )),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Quantity: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            ReactiveForm(
                                              formGroup: group,
                                              child: ReactiveTextField(
                                                validationMessages: {
                                                  ValidationMessage.required:
                                                      (error) =>
                                                          'The quantity must not be empty',
                                                  ValidationMessage.min: (error) =>
                                                      'Minimum of value 1 is required',
                                                },
                                                formControlName: 'quantity',
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                ),
              );
            }),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Extra Details"),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vehicle No: "),
            ReactiveTextField(
              formControlName: 'vehicleNumber',
            ),
            SizedBox(height: 8),
            Text("Invoice No: "),
            ReactiveTextField(formControlName: 'invoiceNumber'),
            SizedBox(height: 8),
          ],
        ),
      ),
    ];
  }
}
