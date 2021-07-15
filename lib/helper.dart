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
        var z = double.parse(CalculatorState.displayResult) / 1000;
        return z.toStringAsFixed(3);
      //break;
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) / 100;
        return z.toStringAsFixed(3);
      //break;
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 2.20462;
        return z.toStringAsFixed(3);
      //break;
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return 'incorrect units';
    }
  } catch (e) {}
}

ton() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) / 1e6;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 1e9;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) * 10;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 2204.62;
        return z.toStringAsFixed(3);
      default:
        return 'incorrect units';
    }
  } catch (e) {}
}

mg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) / 1e6;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) / 1e3;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) / 1e9;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) * 1e8;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 2.2046e-6;
        return z.toStringAsFixed(3);
      default:
        return 'incorrect units';
    }
  } catch (e) {}
}

gram() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) / 1000;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) / 1e6;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) / 1e5;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 0.00220462;
        return z.toStringAsFixed(3);
      default:
        return 'incorrect units';
    }
  } catch (e) {}
}

quintal() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) / 100;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) / 1e5;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 1e8;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) / 10;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 220.462;
        return z.toStringAsFixed(3);
      default:
        return 'incorrect units';
    }
  } catch (e) {}
}

pound() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z = double.parse(CalculatorState.displayResult) * 0.453592;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z = double.parse(CalculatorState.displayResult) * 453.592;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z = double.parse(CalculatorState.displayResult) * 453592;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z = double.parse(CalculatorState.displayResult) * 0.000453592;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z = double.parse(CalculatorState.displayResult) * 0.00453592;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z = double.parse(CalculatorState.displayResult) * 220.462;
        return z.toStringAsFixed(3);
      default:
        return 'incorrect units';
    }
  } catch (e) {}
}

msqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 100;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z = double.parse(CalculatorState.displayResult) * 3.28083;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z = double.parse(CalculatorState.displayResult) * 39.37;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

cmsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z = double.parse(CalculatorState.displayResult) / 100;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z = double.parse(CalculatorState.displayResult) / 30.48;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z = double.parse(CalculatorState.displayResult) * 0.39;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

ftsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 0.305;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 30.48;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z = double.parse(CalculatorState.displayResult) * 12;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

inchsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 0.0254;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z = double.parse(CalculatorState.displayResult) * 2.54;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z = double.parse(CalculatorState.displayResult) / 12;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

mcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z = double.parse(CalculatorState.displayResult) * 1e6;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z = double.parse(CalculatorState.displayResult) * 61023.744095;
        return z.toStringAsFixed(3);
      case 'liters':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z = double.parse(CalculatorState.displayResult) * 264.17;
        return z.toStringAsFixed(3);

      default:
        return '';
    }
  } catch (e) {}
}

cmcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z = double.parse(CalculatorState.displayResult) * 1e-6;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z = double.parse(CalculatorState.displayResult) * 0.0610237;
        return z.toStringAsFixed(3);
      case 'liters':
        var z = double.parse(CalculatorState.displayResult) * 1e-3;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z = double.parse(CalculatorState.displayResult) * 0.000264;
        return z.toStringAsFixed(3);

      default:
        return '';
    }
  } catch (e) {}
}

inchcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z = double.parse(CalculatorState.displayResult) * 1.639e-5;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z = double.parse(CalculatorState.displayResult) * 16.387;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
      case 'liters':
        var z = double.parse(CalculatorState.displayResult) * 0.0164;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z = double.parse(CalculatorState.displayResult) * 0.00433;
        return z.toStringAsFixed(3);

      default:
        return '';
    }
  } catch (e) {}
}

liters() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z = double.parse(CalculatorState.displayResult) / 1000;
        return z.toStringAsFixed(2);
      case 'cm³':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(2);
      case 'inch³':
        var z = double.parse(CalculatorState.displayResult) * 61.024;
        return z.toStringAsFixed(2);
      case 'liters':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z = double.parse(CalculatorState.displayResult) * 0.264;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

gallon() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z = double.parse(CalculatorState.displayResult) * 0.00379;
        return z.toStringAsFixed(2);
      case 'cm³':
        var z = double.parse(CalculatorState.displayResult) * 3785.41;
        return z.toStringAsFixed(2);
      case 'inch³':
        var z = double.parse(CalculatorState.displayResult) * 231;
        return z.toStringAsFixed(2);
      case 'liters':
        var z = double.parse(CalculatorState.displayResult) * 3.785;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kgmetercube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'kg/m³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z = double.parse(CalculatorState.displayResult) * 0.062427960576145;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z =
            double.parse(CalculatorState.displayResult) * 0.000036127292000084;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z = double.parse(CalculatorState.displayResult) * 0.001;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

lbftcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'kg/m³':
        var z = double.parse(CalculatorState.displayResult) * 16.01846;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z = double.parse(CalculatorState.displayResult) * 0.00058;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z = double.parse(CalculatorState.displayResult) * 0.01602;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

lbinchcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'kg/m³':
        var z = double.parse(CalculatorState.displayResult) * 27679.90471;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z = double.parse(CalculatorState.displayResult) * 1728;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z = double.parse(CalculatorState.displayResult) * 27.6799;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

gpercc() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'kg/m³':
        var z = double.parse(CalculatorState.displayResult) * 1000;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z = double.parse(CalculatorState.displayResult) * 62.42796;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z = double.parse(CalculatorState.displayResult) * 0.03613;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

metersqure() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 10000;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) * 1550;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) * 10.7639;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 0.00024710;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 1e-4;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) / 697.80;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) / 1.744;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

cmsqure() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 1e-4;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) / 6.4516;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) * 0.1552;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 2.471e-8;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 1e-8;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) / 6978000;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) / 17440;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

inchsqure() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 0.00064516;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 6.4516;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) / 144;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 1.5942e-7;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 6.4516e-8;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) / 1081600;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) / 2704;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

feetsqure() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 0.092903;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 929.03;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) * 144;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) / 1;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 2.2957e-5;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 9.2903e-6;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) * 0.000133;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) * 0.0532;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

acre() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 4046.86;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 40468600;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) * 6.273e+6;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) * 43560;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 0.404686;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) * 5.799;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) * 2319.7;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

hectare() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 1e4;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 1e8;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) * 1.55e7;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) * 107639;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 2.47105;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) * 14.33;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) * 5732.2;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}
bigha() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z = double.parse(CalculatorState.displayResult) * 697.8;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z = double.parse(CalculatorState.displayResult) * 6978000;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z = double.parse(CalculatorState.displayResult) * 1081600;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z = double.parse(CalculatorState.displayResult) * 7511.1;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z = double.parse(CalculatorState.displayResult) * 2.47105;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z = double.parse(CalculatorState.displayResult) * 1;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z = double.parse(CalculatorState.displayResult) * 14.33;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z = double.parse(CalculatorState.displayResult) * 5732.2;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

