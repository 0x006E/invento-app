import 'package:flutter_bloc/flutter_bloc.dart';

part 'generic_form_stepper_state.dart';

class GenericFormStepperCubit extends Cubit<GenericFormStepperState> {
  GenericFormStepperCubit() : super(GenericFormStepperState(currentStep: 0));

  void incrementStep() =>
      emit(GenericFormStepperState(currentStep: state.currentStep + 1));

  void decrementStep() =>
      emit(GenericFormStepperState(currentStep: state.currentStep - 1));

  void setStep(int stepIndex) =>
      emit(GenericFormStepperState(currentStep: stepIndex));

  @override
  void onChange(Change<GenericFormStepperState> change) {
    print(change.currentState.currentStep);
    print(change.nextState.currentStep);
    super.onChange(change);
  }
}
