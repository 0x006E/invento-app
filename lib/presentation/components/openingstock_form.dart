import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/logic/cubit/OpeningStockCubit/opening_stock_cubit.dart';
import 'package:invento/logic/cubit/OpeningStockFormCubit/opening_stock_form_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../data/models/Product/product.dart';

class OpeningStockForm extends StatelessWidget {
  final bool isEdit;
  late final FormGroup form;

  OpeningStockForm({
    super.key,
    this.isEdit = false,
    String? productId,
    int? quantityFull,
    int? quantityEmpty,
    int? quantityDefective,
  }) {
    form = fb.group({
      'productId': FormControl<String>(
        value: productId ?? '',
        validators: [Validators.required],
      ),
      'quantityFull': FormControl<int>(
          value: quantityFull ?? 0, validators: [Validators.required]),
      'quantityEmpty': FormControl<int>(
          value: quantityEmpty ?? 0, validators: [Validators.required]),
      'quantityDefective': FormControl<int>(
          value: quantityDefective ?? 0, validators: [Validators.required]),
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (create) => OpeningStockFormCubit(
        openingStockCubit: BlocProvider.of<OpeningStockCubit>(context),
      ),
      child: Builder(builder: (context) {
        var bloc = context.read<ProductCubit>().state;
        if (bloc is ProductStateLoaded) {
          if (bloc.products.isNotEmpty) {
            form.control('productId').value = bloc.products[0].id;
          }
        }

        return WillPopScope(
          onWillPop: () async {
            return BlocProvider.of<OpeningStockFormCubit>(context)
                    .state
                    .status !=
                Status.loading;
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 24.0, 32.0, 32.0),
              child: ReactiveForm(
                formGroup: form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${isEdit ? 'Edit' : 'Add'} Opening Stock',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        BlocBuilder<OpeningStockFormCubit,
                            OpeningStockFormState>(
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
                    const SizedBox(height: 10),
                    BlocConsumer<ProductCubit, ProductState>(
                      listener: (context, state) => state.maybeWhen(
                          loaded: (products) => products.isNotEmpty
                              ? form.control('productId').value = products[0].id
                              : null,
                          orElse: () {
                            return null;
                          }),
                      builder: (context, state) {
                        return state.when(
                            loading: () => _productsLoading(),
                            loaded: (products) => _productsLoaded(products),
                            error: (message, code) =>
                                _productsError(message, code));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
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

  Widget _productsLoaded(products) {
    return OpeningStockProductsLoaded(
        form: form, products: products, isEdit: isEdit);
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
}

class OpeningStockProductsLoaded extends StatelessWidget {
  const OpeningStockProductsLoaded(
      {super.key,
      required this.form,
      required this.products,
      required this.isEdit});

  final List<Product> products;
  final FormGroup form;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return BlocBuilder<OpeningStockFormCubit, OpeningStockFormState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.initial:
            return Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 15),
                    const Text("Product: "),
                    Row(
                      children: [
                        Expanded(
                          child: ReactiveDropdownField(
                            formControlName: "productId",
                            readOnly: isEdit,
                            items: products
                                .map<DropdownMenuItem<String>>(
                                  (e) => DropdownMenuItem<String>(
                                    value: e.id,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(width: 8),
                        Builder(builder: (context) {
                          return ElevatedButton(
                              onPressed: isEdit
                                  ? null
                                  : () => context.read<ProductCubit>().fetch(),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: Size.zero, // Set this
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                padding: EdgeInsets.all(4),
                              ),
                              child: Icon(Icons.sync));
                        })
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Full: "),
                              ReactiveTextField(
                                keyboardType: TextInputType.number,
                                formControlName: 'quantityFull',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Empty: "),
                              ReactiveTextField(
                                keyboardType: TextInputType.number,
                                formControlName: 'quantityEmpty',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Defective: "),
                              ReactiveTextField(
                                keyboardType: TextInputType.number,
                                formControlName: 'quantityDefective',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (form.valid) {
                            final Map<String, dynamic> formValue = form.value;
                            if (isEdit) {
                              context
                                  .read<OpeningStockFormCubit>()
                                  .updateItem(formValue);
                            } else {
                              context
                                  .read<OpeningStockFormCubit>()
                                  .addItem(formValue);
                            }
                          } else {
                            form.markAllAsTouched();
                          }
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    if (!isEdit) ...[
                      const SizedBox(width: 20),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => form.reset(value: {
                            'productId': products[0].id,
                            'quantityFull': 0,
                            'quantityEmpty': 0,
                            'quantityDefective': 0,
                          }),
                          // color: Theme.of(context).colorScheme.secondary,
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ),
                      ),
                    ],
                  ],
                )
              ],
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
                child: Expanded(
                  child: Column(
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
      },
    );
  }
}
