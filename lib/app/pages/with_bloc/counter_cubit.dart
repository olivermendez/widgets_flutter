import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  //default state super(0);
  CounterCubit() : super(0);
  //methods
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
