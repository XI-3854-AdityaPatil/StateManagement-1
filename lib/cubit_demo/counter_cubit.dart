import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    emit(UpdateCounterState(count: _counter));
  }

  void decrementCounter() {
    _counter--;
    emit(UpdateCounterState(count: _counter));
  }
}
