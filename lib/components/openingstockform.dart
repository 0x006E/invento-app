import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class OpeningStockForm extends StatefulWidget {
  const OpeningStockForm({super.key});

  @override
  State<OpeningStockForm> createState() => _OpeningStockFormState();
}

class _OpeningStockFormState extends State<OpeningStockForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 24.0, 32.0, 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Add Opening Stock',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            FormBuilder(
              key: _formKey,
              onChanged: () {
                _formKey.currentState!.save();
                debugPrint(_formKey.currentState!.value.toString());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 15),
                  const Text("Product: "),
                  FormBuilderDropdown(
                      name: "product",
                      initialValue: 'Product 1',
                      validator: FormBuilderValidators.required(),
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: "Product 1",
                          child: Text("Product 1"),
                        ),
                        DropdownMenuItem(
                          value: "Product 2",
                          child: Text("Product 2"),
                        ),
                        DropdownMenuItem(
                          value: "Product 3",
                          child: Text("Product 3"),
                        ),
                      ]),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Full: "),
                            FormBuilderTextField(
                              keyboardType: TextInputType.number,
                              name: 'full',
                              initialValue: '0',
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.integer(),
                              ]),
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
                            FormBuilderTextField(
                              keyboardType: TextInputType.number,
                              name: 'empty',
                              initialValue: '0',
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.integer(),
                              ]),
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
                            FormBuilderTextField(
                              keyboardType: TextInputType.number,
                              name: 'defective',
                              initialValue: '0',
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.integer(),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text("Type of location: "),
                  FormBuilderDropdown(
                      name: "type_loc",
                      initialValue: 'Location 1',
                      validator: FormBuilderValidators.required(),
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: "Location 1",
                          child: Text("Location 1"),
                        ),
                        DropdownMenuItem(
                          value: "Product 2",
                          child: Text("Product 2"),
                        ),
                        DropdownMenuItem(
                          value: "Product 3",
                          child: Text("Product 3"),
                        ),
                      ]),
                  const SizedBox(height: 15),
                  const Text("Location: "),
                  FormBuilderDropdown(
                      name: "product",
                      initialValue: 'Product 1',
                      validator: FormBuilderValidators.required(),
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: "Product 1",
                          child: Text("Product 1"),
                        ),
                        DropdownMenuItem(
                          value: "Product 2",
                          child: Text("Product 2"),
                        ),
                        DropdownMenuItem(
                          value: "Product 3",
                          child: Text("Product 3"),
                        ),
                      ]),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        debugPrint(_formKey.currentState?.value.toString());
                      } else {
                        debugPrint(_formKey.currentState?.value.toString());
                        debugPrint('validation failed');
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
                    onPressed: () {
                      _formKey.currentState?.reset();
                    },
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
    );
  }
}
