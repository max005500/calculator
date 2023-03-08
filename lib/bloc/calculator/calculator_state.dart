part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState {
  final MathModel? maths;
  const CalculatorState({this.maths});
}

class CalculatorInitialState extends CalculatorState {
  CalculatorInitialState()
      : super(
            maths: new MathModel(
                mathResult: '0',
                firstNumber: '0',
                secondNumber: '0',
                opertaion: ':'));
}

class CalculatorSetState extends CalculatorState {
  final MathModel newMath;
  const CalculatorSetState(this.newMath)
      : super(
          maths: newMath,
        );
}
