import 'package:flutter/material.dart';

class CalculatorButtom extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;
  final Function onPress;

  const CalculatorButtom({
    super.key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPress,
  }) : this.bgColor = bgColor ?? const Color(0xff333333);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    );
    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: TextButton(
          onPressed: () => onPress(),
          child: Container(
            width: this.big ? 150 : 65,
            height: 65,
            child: Center(
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          style: buttonStyle,
        ));
  }
}
