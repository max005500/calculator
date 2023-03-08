import 'package:calculator/bloc/calculator/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculatorBlc = BlocProvider.of<CalculatorBloc>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const ResultWidget(),
          ButtomsRow(
            text1: 'AC',
            text2: '+/-',
            text3: 'del',
            text4: '/',
            bgColor: Colors.white38,
            onPress1: () => calculatorBlc.add(ResetAC()),
            onPress2: () => calculatorBlc.add(ChangeSign()),
            onPress3: () => calculatorBlc.add(DeleteLastEntry()),
            onPress4: () => calculatorBlc.add(SetOpertion('/')),
          ),
          ButtomsRow(
            text1: '7',
            text2: '8',
            text3: '9',
            text4: 'x',
            onPress1: () => calculatorBlc.add(AddNumber('7')),
            onPress2: () => calculatorBlc.add(AddNumber('8')),
            onPress3: () => calculatorBlc.add(AddNumber('9')),
            onPress4: () => calculatorBlc.add(SetOpertion('x')),
          ),
          ButtomsRow(
            text1: '4',
            text2: '5',
            text3: '6',
            text4: '-',
            onPress1: () => calculatorBlc.add(AddNumber('4')),
            onPress2: () => calculatorBlc.add(AddNumber('5')),
            onPress3: () => calculatorBlc.add(AddNumber('6')),
            onPress4: () => calculatorBlc.add(SetOpertion('-')),
          ),
          ButtomsRow(
            text1: '1',
            text2: '2',
            text3: '3',
            text4: '+',
            onPress1: () => calculatorBlc.add(AddNumber('1')),
            onPress2: () => calculatorBlc.add(AddNumber('2')),
            onPress3: () => calculatorBlc.add(AddNumber('3')),
            onPress4: () => calculatorBlc.add(SetOpertion('+')),
          ),
          ButtomsRow(
            text3: '.',
            text4: '=',
            big: true,
            onPress1: () => calculatorBlc.add(AddNumber('0')),
            onPress3: () => calculatorBlc.add(AddNumber('.')),
            onPress4: () => calculatorBlc.add(MathResult()),
          ),
        ],
      ),
    ));
  }
}
