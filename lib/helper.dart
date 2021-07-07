import 'dart:io';

import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'DisplayScreen.dart';

meter() {
  print(' is  vvv hard');

  switch (CalculatorState.myController2.text) {
    case 'Centimeter':
      //print('objects are true');
      //print(CalculatorState().displayNum2);
      //CalculatorState().displayNum2 = 'difficult';
      //print(CalculatorState().displayNum2);
      //CalculatorState().displayResult.toString();
      var z = double.parse(CalculatorState.displayNum) * 1000;
      return z.toString();
      break;
    default:
      CalculatorState.displayNum2 = 'incorrect unit';
  }
  //CalculatorState().displayNum2 = "n777777777";
  //print(CalculatorState().displayNum2);
}
