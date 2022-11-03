import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
// import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(CounterInitial(count: 0)) {
    on<Increment>(
        (event, emit) => emit(CounterInitial(count: state.count + 1)));
    on<Decrement>(
        (event, emit) => emit(CounterInitial(count: state.count - 1)));
  }
}
