part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;
  AddNumber(this.number);
}

class SetOpertion extends CalculatorEvent {
  final String operation;
  SetOpertion(this.operation);
}

class ResetAC extends CalculatorEvent {}

class MathResult extends CalculatorEvent {}

class ChangeSign extends CalculatorEvent {}

class DeleteLastEntry extends CalculatorEvent {}
