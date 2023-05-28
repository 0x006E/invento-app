import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReceiptForm extends StatelessWidget {
  ReceiptForm({Key? key}) : super(key: key);

  final List<String> products = ["Customer 1", "Customer 2", "Customer 3"];

  final form = fb.group({'products': fb.array<bool>([]), 'mode': ''});

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
        title: const Text("Select Customer"),
        content: ReactiveDropdownField(
          formControlName: 'mode',
          items: const [DropdownMenuItem(child: Text("Customer 1"))],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Select Sale items"),
        content: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: products
                  .map(
                    (e) => CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: true,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(e), Text("Rs. 1200")],
                      ),
                      onChanged: (bool? value) {},
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total Amount: ",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                Text("Rs. 3000", style: TextStyle(fontSize: 18))
              ],
            )
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Mode of payment"),
        content: Column(
          children: [
            ReactiveDropdownField(
                formControlName: 'mode',
                items: const [DropdownMenuItem(child: Text("UPI"))]),
          ],
        ),
      ),
    ];
  }
}
