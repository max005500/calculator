import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  final String text;
  const MainResult({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 20),
      child: Text(
        text,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
