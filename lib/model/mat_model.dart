class MathModel {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String opertaion;

  MathModel({
    required this.mathResult,
    required this.firstNumber,
    required this.secondNumber,
    required this.opertaion,
  });
  MathModel copywith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? opertaion,
  }) =>
      MathModel(
        mathResult: mathResult ?? this.mathResult,
        firstNumber: firstNumber ?? this.firstNumber,
        secondNumber: secondNumber ?? this.secondNumber,
        opertaion: opertaion ?? this.opertaion,
      );
}
