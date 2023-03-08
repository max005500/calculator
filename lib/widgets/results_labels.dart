import 'package:calculator/bloc/calculator/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/sub_result.dart';
import 'package:calculator/widgets/main_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) => Column(
        children: [
          SubResult(text: '${state.maths?.firstNumber}  '),
          SubResult(
              text: '${state.maths?.secondNumber} ${state.maths?.opertaion}'),
          Divider(
            thickness: 2,
            height: 20,
            color: Colors.white.withOpacity(0.4),
          ),
          MainResult(text: state.maths?.mathResult ?? ''),
        ],
      ),
    );
  }
}
