abstract class CounterState {
  final CalculatorData data;

  CounterState(this.data);
}

class Initial extends CounterState {
  Initial() : super(CalculatorData(0, 0, 0));
}

class Increment extends CounterState {
  Increment(
    double firstOperand,
    double secondOperand,
    double result,
  ) : super(CalculatorData(firstOperand, secondOperand, result));
}

class Decrement extends CounterState {
  Decrement(
    double firstOperand,
    double secondOperand,
    double result,
  ) : super(CalculatorData(firstOperand, secondOperand, result));
}

class Divide extends CounterState {
  Divide(
    double firstOperand,
    double secondOperand,
    double result,
  ) : super(CalculatorData(firstOperand, secondOperand, result));
}

class Multily extends CounterState {
  Multily(
    double firstOperand,
    double secondOperand,
    double result,
  ) : super(CalculatorData(firstOperand, secondOperand, result));
}

class FillSecondOperand extends CounterState {
  FillSecondOperand(
    double firstOperand,
    double secondOperand,
    double result,
  ) : super(CalculatorData(firstOperand, secondOperand, result));
}

class CalculatorData {
  final double firstOperand;
  final double secondOperand;
  final double result;

  CalculatorData(this.firstOperand, this.secondOperand, this.result);
}
