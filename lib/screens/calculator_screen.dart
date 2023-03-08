import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SubResult(text: '1000'),
          const SubResult(text: '+'),
          const SubResult(text: '1000'),
          Divider(
            thickness: 2,
            height: 20,
            color: Colors.white.withOpacity(0.4),
          ),
          const MainResult(text: '2000'),
          ButtomsRow(
            text1: 'AC',
            text2: '+/-',
            text3: 'del',
            text4: '/',
            bgColor: Colors.white38,
          ),
          ButtomsRow(
            text1: '7',
            text2: '8',
            text3: '9',
            text4: 'x',
          ),
          ButtomsRow(
            text1: '4',
            text2: '5',
            text3: '6',
            text4: '-',
          ),
          ButtomsRow(
            text1: '1',
            text2: '2',
            text3: '3',
            text4: '+',
          ),
          ButtomsRow(
            text3: '.',
            text4: '=',
            big: true,
          ),
        ],
      ),
    ));
  }
}

class ButtomsRow extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final Color? bgColor;
  final bool big;
  const ButtomsRow(
      {super.key,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.bgColor,
      this.big = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (big == false) ...[
          CalculatorButtom(
            text: text1!,
            onPress: () => {},
            bgColor: bgColor,
          ),
          CalculatorButtom(
            text: text2!,
            onPress: () => {},
            bgColor: bgColor,
          ),
        ] else ...[
          CalculatorButtom(text: '0', onPress: () => {}, big: true),
        ],
        CalculatorButtom(
          text: text3!,
          onPress: () => {},
          bgColor: bgColor,
        ),
        CalculatorButtom(
          text: text4!,
          onPress: () => {},
          bgColor: Colors.orangeAccent,
        ),
      ],
    );
  }
}
