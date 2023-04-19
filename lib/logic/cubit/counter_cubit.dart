import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));

  void incrementCounter() =>
      emit(CounterState(counterValue: state.counterValue + 1));

  void decrementCounter() =>
      emit(CounterState(counterValue: state.counterValue - 1));
}
