import 'dart:math';

class CalculateBmi{
  double bmiResult(int height, int weight){
    double bmi = weight / pow(height/100, 2);
    return bmi;
  }
}