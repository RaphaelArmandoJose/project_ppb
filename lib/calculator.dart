import 'dart:math';
import 'constants.dart';

class Calculator {
  Calculator(
      {required this.height, required this.weight, required this.gender});

  final int height;
  final int weight;
  final Gender gender;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Fatass';
    } else if (_bmi >= 18.5) {
      return 'Neutral';
    } else {
      return 'Bones';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Hold it there bucko, save some food for the rest of us';
    } else if (_bmi >= 18.5) {
      return 'You managed to reached normal, congrats!';
    } else {
      return 'How about you eat some more, you skinny fuck!';
    }
  }
}