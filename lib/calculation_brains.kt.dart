import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;
  String _resultText = "";
  String _interpretation = "";
  double _bmi = 0.0;

  double get bmi => _bmi;
  String get resultText => _resultText;
  String get interpretation => _interpretation;


  CalculatorBrain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
    _resultText = _getResult();
    _interpretation = _getInterpretation();
  }

  String _getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String _getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
