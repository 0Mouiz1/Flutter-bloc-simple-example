/*
CUBIT :Simpliefied version of BLoC for easy state management

Lets create our own counter cubit

 */
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);
//increment
  void increment() => emit(state + 1);
//decrement

  void decrement() => emit(state - 1);
}
