import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial(0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementPressed) {
        emit(CounterUpdated(++counter));
      }
      if (event is DecrementPressed) {
        emit(CounterUpdated(--counter));
      }
      if (event is ResetPressed) {
        emit(CounterReset(counter = 0));
      }
    });
  }
}
