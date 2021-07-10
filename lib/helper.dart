import 'Calculator.dart';

meter() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        //return double.parse((CalculatorState.displayResult) * 1000)
        //.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 39.3701;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 3.28084;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 1.09361;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 0.000621371;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
    //CalculatorState().displayNum2 = "n777777777";
    //print(CalculatorState().displayNum2);
  } catch (e) {
    print(e);
  }
}

centimeter() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) / 100;
        return z.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 0.393701;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 0.0328084;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 0.0109361;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 6.2137e-6;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

inch() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) * 0.0254;
        return z.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 2.54;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 0.0833333;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 0.0277778;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 1.5783e-5;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

feet() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) * 0.3048;
        return z.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 30.48;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 12;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 0.333333;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 0.000189394;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

yard() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) * 0.9144;
        return z.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 91.44;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 36;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 3;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 0.000568182;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

mile() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult) * 1609.34;
        return z.toStringAsFixed(3);
        break;
      case 'Centimeter':
        var z = double.parse(CalculatorState.displayResult) * 160934;
        return z.toStringAsFixed(3);
        break;
      case 'Inch':
        var z = double.parse(CalculatorState.displayResult) * 63360;
        return z.toStringAsFixed(3);
        break;
      case 'Feet':
        var z = double.parse(CalculatorState.displayResult) * 5280;
        return z.toStringAsFixed(3);
        break;
      case 'Yard':
        var z = double.parse(CalculatorState.displayResult) * 1760;
        return z.toStringAsFixed(3);
        break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}
kg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        //break;
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(3);
       // break;
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 1e6;
        return z.toStringAsFixed(3);
        //break;
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) /1000;
        return z.toStringAsFixed(3);
        //break;
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) /100;
        return z.toStringAsFixed(3);
        //break;
      case 'Miles':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
        //break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

