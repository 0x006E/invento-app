import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class StockForm extends StatelessWidget {
  StockForm({Key? key}) : super(key: key);

  final List<String> products = [
    "35KG Cylinder",
    "25KG Cylinder",
    "15KG Cylinder"
  ];

  final form = fb.group({'products': fb.array<bool>([]), 'dummy': ''});

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
                            child: Text(isLastStep0 ? 'Send' : 'Next'))),
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

  List<Step> getSteps(int currentStep) {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text("Select Products"),
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
                                  'Full: ',
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
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Empty: ',
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
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Defective: ',
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
        title: const Text("Extra Details"),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Warehouse: "),
            ReactiveDropdownField(
              formControlName: 'dummy',
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem(
                  value: "Warehouse 1",
                  child: Text("Warehouse 1"),
                ),
                DropdownMenuItem(
                  value: "Warehouse 2",
                  child: Text("Warehouse 2"),
                ),
                DropdownMenuItem(
                  value: "Warehouse 3",
                  child: Text("Warehouse 3"),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("Date & Time: "),
            TextField(
              keyboardType: TextInputType.datetime,
            ),
          ],
        ),
      ),
    ];
  }
}
