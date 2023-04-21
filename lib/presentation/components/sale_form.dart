import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SaleForm extends StatelessWidget {
  SaleForm({Key? key}) : super(key: key);

  final List<String> products = [
    "35KG Cylinder",
    "25KG Cylinder",
    "15KG Cylinder"
  ];

  final form =
      fb.group({'products': fb.array<bool>([]), 'dummy': '', 'dummy2': ''});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericFormStepperCubit, GenericFormStepperState>(
      builder: (context, state) {
        final stepperCubit = context.watch<GenericFormStepperCubit>();
        return ReactiveForm(
          formGroup: form,
          child: Stepper(
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              final isLastStep0 =
                  state.currentStep == getSteps(state.currentStep).length - 1;
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: details.onStepContinue,
                            child: Text(isLastStep0 ? 'Submit' : 'Next'))),
                    const SizedBox(
                      width: 12,
                    ),
                    if (state.currentStep != 0)
                      Expanded(
                          child: ElevatedButton(
                              onPressed: details.onStepCancel,
                              child: const Text('Back')))
                  ]));
            },
            type: StepperType.vertical,
            currentStep: state.currentStep,
            onStepCancel: () =>
                state.currentStep == 0 ? null : stepperCubit.decrementStep(),
            onStepContinue: () {
              bool isLastStep =
                  (state.currentStep == getSteps(state.currentStep).length - 1);
              if (isLastStep) {
                //Do something with this information
              } else {
                stepperCubit.incrementStep();
              }
            },
            onStepTapped: (step) => stepperCubit.setStep(step),
            steps: getSteps(state.currentStep),
          ),
        );
      },
    );
  }

  TableRow buildTableRowDivider({
    required int cols,
    double height = 1,
    Color color = Colors.transparent,
  }) =>
      TableRow(
        children: [
          for (var i = 0; i < cols; i++)
            Container(
              height: height,
              color: color,
            )
        ],
      );

  List<Step> getSteps(int currentStep) {
    final tableDivider = buildTableRowDivider(cols: 3, height: 4);
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text("Select items"),
        content: ListView(
          shrinkWrap: true,
          children: products
              .map(
                (e) => CheckboxListTile(
                  value: true,
                  title: Text(e),
                  onChanged: (bool? value) {},
                ),
              )
              .toList(),
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Add Quantities"),
        content: Column(
          children: products
              .map((e) => Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(e,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14))),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Quantity: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8),
                                TextField(
                                  keyboardType: TextInputType.number,
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
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Select Customer"),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Customer: "),
            ReactiveDropdownField(
              formControlName: 'dummy',
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem(
                  value: "Warehouse",
                  child: Text("Customer 1"),
                ),
                DropdownMenuItem(
                  value: "Supplier",
                  child: Text("Customer 2"),
                ),
                DropdownMenuItem(
                  value: "Truck",
                  child: Text("Customer 3"),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("Discount: "),
            TextField(),
          ],
        ),
      ),
      Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: const Text("Summary"),
          content: Table(
            columnWidths: const {
              0: FlexColumnWidth(0.4),
              1: FlexColumnWidth(0.2),
              2: FlexColumnWidth(0.4),
            },
            children: [
              TableRow(
                children: const [
                  Text(
                    "Item",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Qty",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Price",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              tableDivider,
              TableRow(
                children: const [
                  Text(
                    "35KG Cylinder",
                  ),
                  Text(
                    "2",
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "300.00",
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              tableDivider,
              TableRow(
                children: const [
                  Text(
                    "25KG Cylinder",
                  ),
                  Text(
                    "10",
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "500.00",
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              tableDivider,
              TableRow(
                children: const [
                  Text(
                    "15KG Cylinder",
                  ),
                  Text(
                    "8",
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "400.00",
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              tableDivider,
              TableRow(
                children: const [
                  Text(
                    "Discount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-400.00",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              tableDivider,
              tableDivider,
              buildTableRowDivider(
                cols: 3,
                height: 2,
                color: Colors.grey.shade300,
              ),
              tableDivider,
              TableRow(
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "1200.00",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ],
          )),
    ];
  }
}
