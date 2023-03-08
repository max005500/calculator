import 'package:bloc/bloc.dart';
import 'package:calculator/model/mat_model.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super((CalculatorInitialState())) {
    on<ResetAC>((event, emit) => emit(CalculatorInitialState()));
    on<AddNumber>(
        (event, emit) => emit(CalculatorSetState(_addNumber(event.number))));
    on<SetOpertion>(
        (event, emit) => emit(CalculatorSetState(_opertaion(event.operation))));
    on<MathResult>(
      (event, emit) => emit(CalculatorSetState(_resultado())),
    );
    on<ChangeSign>(
      (event, emit) => emit(CalculatorSetState(_changeSign())),
    );
    on<DeleteLastEntry>(
      (event, emit) => emit(CalculatorSetState(_deleteLastEntry())),
    );
  }
  MathModel get mathState => state.maths!;

  MathModel _changeSign() {
    return mathState.mathResult.contains('-')
        ? mathState.copywith(
            mathResult: mathState.mathResult.replaceFirst('-', ''))
        : mathState.copywith(mathResult: '-' + mathState.mathResult);
  }

  MathModel _addNumber(String val) {
    if (mathState.mathResult.contains('.') && val == '.')
      return mathState.copywith(
          mathResult: mathState.mathResult.replaceAll('.', val));

    return val != '.' &&
            (mathState.mathResult == '0' || mathState.mathResult == '-0')
        ? mathState.copywith(
            mathResult: mathState.mathResult.replaceAll('0', val))
        : mathState.copywith(mathResult: mathState.mathResult + val);
  }

  MathModel _opertaion(String val) {
    final maths = mathState;
    return maths.copywith(
        firstNumber: maths.mathResult,
        opertaion: val,
        mathResult: '0',
        secondNumber: '0');
  }

  MathModel _deleteLastEntry() {
    if (mathState.mathResult.contains('-')) {
      return mathState.mathResult.length > 2
          ? mathState.copywith(
              mathResult: mathState.mathResult
                  .substring(0, mathState.mathResult.length - 1))
          : mathState.copywith(mathResult: '0');
    } else {
      return mathState.mathResult.length > 1
          ? mathState.copywith(
              mathResult: mathState.mathResult
                  .substring(0, mathState.mathResult.length - 1))
          : mathState.copywith(mathResult: '0');
    }
  }

  MathModel _resultado() {
    final double result;
    switch (mathState.opertaion) {
      case "x":
        result = double.parse(mathState.firstNumber) *
            double.parse(mathState.mathResult);
        return mathState.copywith(
            mathResult: '$result', secondNumber: mathState.mathResult);
      case "/":
        result = double.parse(mathState.firstNumber) /
            double.parse(mathState.mathResult);
        return mathState.copywith(
            mathResult: '$result', secondNumber: mathState.mathResult);
      case "-":
        result = double.parse(mathState.firstNumber) -
            double.parse(mathState.mathResult);
        return mathState.copywith(
            mathResult: '$result', secondNumber: mathState.mathResult);
      case "+":
        result = double.parse(mathState.firstNumber) +
            double.parse(mathState.mathResult);
        return mathState.copywith(
            mathResult: '$result', secondNumber: mathState.mathResult);
    }
    return mathState;
  }
}
