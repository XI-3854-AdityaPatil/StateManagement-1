part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class UpdateCounterState extends CounterState {
  final int count;

  UpdateCounterState({required this.count});
}
