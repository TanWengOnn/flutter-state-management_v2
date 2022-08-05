import 'package:bloc_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubits extends Cubit<CounterState> {
  CounterCubits() : super(Initial());

  void increment() {
    emit(Increment(
      state.data.firstOperand + 1,
      state.data.secondOperand,
      state.data.result,
    ));
  }

  void decrement() {
    emit(Decrement(
      state.data.firstOperand - 1,
      state.data.secondOperand,
      state.data.result,
    ));
  }

  void reset() {
    emit(Initial());
  }

  void inputValue(value) {
    emit(FillSecondOperand(state.data.firstOperand, value, 0));
  }

  void multiply() {
    emit(Multily(
      state.data.firstOperand,
      state.data.secondOperand,
      state.data.firstOperand * state.data.secondOperand,
    ));
  }

  void divide() {
    emit(Divide(
      state.data.firstOperand,
      state.data.secondOperand,
      state.data.firstOperand / state.data.secondOperand,
    ));
  }

  String getOperator() {
    if (state is Divide) {
      return '/';
    }

    if (state is Multily) {
      return '*';
    }

    return '';
  }
}
