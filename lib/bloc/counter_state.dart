part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  late final int count;
  CounterInitial({required this.count});
}
