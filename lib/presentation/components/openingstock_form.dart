import 'package:flutter/material.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 15),
                  const Text("Product: "),
                  ReactiveDropdownField(
                    formControlName: "productId",
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: "25KG Cylinder",
                        child: Text("25KG Cylinder"),
                      ),
                      DropdownMenuItem(
                        value: "Product 2",
                        child: Text("Product 2"),
                      ),
                      DropdownMenuItem(
                        value: "Product 3",
                        child: Text("Product 3"),
                      ),
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
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
