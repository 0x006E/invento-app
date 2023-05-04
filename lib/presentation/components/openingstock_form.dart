import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OpeningStockForm extends StatelessWidget {
  final form = fb.group({
    'productId': ['', Validators.required],
    'quantityFull': [0, Validators.required],
    'quantityEmpty': [0, Validators.required],
    'quantityDefective': [0, Validators.required],
  });

  OpeningStockForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ProductCubit>().state;
    if (bloc is ProductStateLoaded) {
      if (bloc.products.isNotEmpty) {
        form.control('productId').value = bloc.products[0].id;
      }
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 24.0, 32.0, 32.0),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Add Opening Stock',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              BlocBuilder<ProductCubit, ProductState>(
                builder: (context, state) {
                  return state.when(
                      loading: () => _productsLoading(),
                      loaded: (products) => _productsLoaded(products),
                      error: (message, code) => _productsError(message, code));
                },
              ),
              const SizedBox(height: 15),
              BlocConsumer<ProductCubit, ProductState>(
                listener: (context, state) => {
                  state.maybeWhen(
                    loaded: (products) {
                      if (products.isNotEmpty) {
                        form.control('productId').value = products[0].id;
                      }
                    },
                    orElse: () {},
                  )
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (_) => Row(
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              if (form.valid) {
                                debugPrint(form.value.toString());
                              }
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => form.reset(),
                            // color: Theme.of(context).colorScheme.secondary,
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                        ),
                      ],
                    ),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _productsLoading() {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return SizedBox(
      height: 0.5 * logicalHeight,
      child: Center(
        child: LoadingAnimationWidget.halfTriangleDot(
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }

  Widget _productsLoaded(products) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 15),
        const Text("Product: "),
        ReactiveDropdownField(
          formControlName: "productId",
          items: products
              .map<DropdownMenuItem<String>>(
                (e) => DropdownMenuItem<String>(
                  value: e.id,
                  child: Text(e.name),
                ),
              )
              .toList(),
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
    );
  }

  Widget _productsError(message, code) {
    var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
    var logicalHeight = logicalScreenSize.height;
    return SizedBox(
        height: 0.5 * logicalHeight,
        child: ErrorInfo(
          errorMessage: message,
          errorCode: code,
        ));
  }
}
