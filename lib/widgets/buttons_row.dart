import 'package:calculator/widgets/calc_buttom.dart';
import 'package:flutter/material.dart';

class ButtomsRow extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final Color? bgColor;
  final bool big;
  final void Function()? onPress1;
  final void Function()? onPress2;
  final void Function()? onPress3;
  final void Function()? onPress4;
  const ButtomsRow(
      {super.key,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.onPress1,
      this.onPress2,
      this.onPress3,
      this.onPress4,
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
            onPress: onPress1!,
            bgColor: bgColor,
          ),
          CalculatorButtom(
            text: text2!,
            onPress: onPress2!,
            bgColor: bgColor,
          ),
        ] else ...[
          CalculatorButtom(text: '0', onPress: onPress1!, big: true),
        ],
        CalculatorButtom(
          text: text3!,
          onPress: onPress3!,
          bgColor: bgColor,
        ),
        CalculatorButtom(
          text: text4!,
          onPress: onPress4!,
          bgColor: Colors.orangeAccent,
        ),
      ],
    );
  }
}
