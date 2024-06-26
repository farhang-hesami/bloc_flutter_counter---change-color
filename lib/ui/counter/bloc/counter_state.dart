part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final int counter;
  CounterInitial(this.counter);
}

class CounterUpdated extends CounterState {
  final int counter;
  CounterUpdated(this.counter);
}

class CounterReset extends CounterState {
  final int counter;
  CounterReset(this.counter);
}
