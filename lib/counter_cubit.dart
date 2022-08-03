import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubits extends Cubit<Map> {
  CounterCubits() : super({"num1": 0, "num2": "", "answer": 0,"type": ""});

  void increment() {
    state["num1"] = state["num1"] + 1;
    emit({"num1":state["num1"], "num2": state["num2"], "answer": 0, "type": ""});
  }
  void decrement() {
    state["num1"] = state["num1"] - 1;
    emit({"num1":state["num1"], "num2": state["num2"], "answer": 0, "type": ""});
  }
  void reset() {
    state["num1"] = 0;
    emit({"num1":state["num1"], "num2": state["num2"], "answer": 0, "type": ""});
  }

  void inputValue(value) {
    emit({"num1":state["num1"], "num2": value, "answer": 0, "type": ""});
  }

  void multiply(type) {
    state["answer"] = state["num1"]*int.parse(state["num2"]);
    emit({"num1":state["num1"], "num2": state["num2"], "answer": state["answer"], "type": type});
  }

  void divide(type) {
    state["answer"] = state["num1"]/int.parse(state["num2"]);
    emit({"num1":state["num1"], "num2": state["num2"], "answer": state["answer"], "type": type});
  }
}