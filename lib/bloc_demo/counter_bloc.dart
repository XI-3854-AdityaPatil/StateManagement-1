// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_events.dart';
import 'counter_states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState(0)) {
    on<IncrementEvent>(onNumberIncrease);
    on<DecrementEvent>(onNumberDecrease);
  }

  int _counter = 0;

  void onNumberIncrease(
      IncrementEvent event, Emitter<CounterState> emit) async {
    _counter = _counter + 1;
    emit(InitialCounterState(_counter));
  }

  void onNumberDecrease(
      DecrementEvent event, Emitter<CounterState> emit) async {
    _counter = _counter - 1;
    emit(InitialCounterState(_counter));
  }
}
