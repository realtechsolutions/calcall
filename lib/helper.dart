import 'package:calcall/Calculator.dart';

//import 'Calculator.dart';

meter() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        CalculatorState.displayNum2 = z.toStringAsFixed(2);
        break;

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(2);
      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                39.3701;
        return z.toStringAsFixed(2);
      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.28084;
        return z.toStringAsFixed(2);
      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.09361;
        return z.toStringAsFixed(2);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000621371;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {
    print(e);
  }
}

cm() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                100;
        return z.toStringAsFixed(2);

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.393701;
        return z.toStringAsFixed(2);

      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0328084;
        return z.toStringAsFixed(2);

      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0109361;
        return z.toStringAsFixed(2);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.2137e-6;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

inch() {
  try {
    print(' f working');
    CalculatorState.displayNum2 = 'working';
    print(CalculatorState.displayNum2);
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0254;
        return z.toStringAsFixed(2);

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.54;
        return z.toStringAsFixed(2);

      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0833333;
        return z.toStringAsFixed(2);

      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0277778;
        return z.toStringAsFixed(2);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.5783e-5;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

feet() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z = double.parse(CalculatorState.displayResult
                .split('=')
                .join('')
                .split('=')
                .join('')) *
            0.3048;
        return z.toStringAsFixed(2);

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                30.48;
        return z.toStringAsFixed(2);

      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                12;
        return z.toStringAsFixed(3);

      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);

      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.333333;
        return z.toStringAsFixed(3);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000189394;
        return z.toStringAsFixed(3);

      default:
        return '';
    }
  } catch (e) {}
}

yard() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.9144;
        return z.toStringAsFixed(3);

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                91.44;
        return z.toStringAsFixed(3);

      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                36;
        return z.toStringAsFixed(3);

      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 3;
        return z.toStringAsFixed(3);

      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000568182;
        return z.toStringAsFixed(3);

      default:
        return '';
    }
  } catch (e) {}
}

mile() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Meter':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1609.34;
        return z.toStringAsFixed(3);

      case 'cm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                160934;
        return z.toStringAsFixed(3);

      case 'Inch':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                63360;
        return z.toStringAsFixed(3);

      case 'Feet':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                5280;
        return z.toStringAsFixed(3);

      case 'Yard':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1760;
        return z.toStringAsFixed(3);

      case 'Miles':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);

      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return '';
    }
  } catch (e) {}
}

kg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      //
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(3);
      //
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e6;
        return z.toStringAsFixed(3);
      //
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1000;
        return z.toStringAsFixed(3);
      //
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                100;
        return z.toStringAsFixed(3);
      //
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.20462;
        return z.toStringAsFixed(3);
      //
      default:
        //CalculatorState.displayNum2 = 'incorrect unit';
        return '';
    }
  } catch (e) {}
}

ton() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e6;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e9;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                10;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2204.62;
        return z.toStringAsFixed(3);
      default:
        return '';
    }
  } catch (e) {}
}

mg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e6;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e3;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e9;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e8;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.2046e-6;
        return z.toStringAsFixed(3);
      default:
        return '';
    }
  } catch (e) {}
}

gram() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1000;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e6;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e5;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00220462;
        return z.toStringAsFixed(3);
      default:
        return '';
    }
  } catch (e) {}
}

quintal() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                100;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1e5;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e8;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                10;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                220.462;
        return z.toStringAsFixed(3);
      default:
        return '';
    }
  } catch (e) {}
}

pound() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Kg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.453592;
        return z.toStringAsFixed(3);
      case 'Gram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                453.592;
        return z.toStringAsFixed(3);
      case 'Miligram':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                453592;
        return z.toStringAsFixed(3);
      case 'Ton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000453592;
        return z.toStringAsFixed(3);
      case 'Quintal':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00453592;
        return z.toStringAsFixed(3);
      case 'Pound':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                220.462;
        return z.toStringAsFixed(3);
      default:
        return '';
    }
  } catch (e) {}
}

msqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                100;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.28083;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                39.37;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

cmsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                100;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                30.48;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.39;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

ftsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.305;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                30.48;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                12;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

inchsqsecond() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0254;
        return z.toStringAsFixed(2);
      case 'cm/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.54;
        return z.toStringAsFixed(2);
      case 'feet/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                12;
        return z.toStringAsFixed(2);
      case 'inch/sec²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
    }
  } catch (e) {}
}

mcube() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e6;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                61023.744095;
        return z.toStringAsFixed(3);
      case 'liters':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                264.17;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-6;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0610237;
        return z.toStringAsFixed(3);
      case 'liters':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-3;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000264;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.639e-5;
        return z.toStringAsFixed(3);
      case 'cm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                16.387;
        return z.toStringAsFixed(3);
      case 'inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      case 'liters':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0164;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00433;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1000;
        return z.toStringAsFixed(2);
      case 'cm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(2);
      case 'inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                61.024;
        return z.toStringAsFixed(2);
      case 'liters':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.264;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00379;
        return z.toStringAsFixed(2);
      case 'cm³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3785.41;
        return z.toStringAsFixed(2);
      case 'inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                231;
        return z.toStringAsFixed(2);
      case 'liters':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.785;
        return z.toStringAsFixed(3);
      case 'gallon':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.062427960576145;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000036127292000084;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.001;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                16.01846;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00058;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.01602;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                27679.90471;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1728;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                27.6799;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(2);
      case 'lb/ft³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                62.42796;
        return z.toStringAsFixed(2);
      case 'lb/inch³':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.03613;
        return z.toStringAsFixed(2);
      case 'g/cc':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                10000;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1550;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                10.7639;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00024710;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-4;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                697.80;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1.744;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-4;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                6.4516;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.1552;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.471e-8;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-8;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                6978000;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                17440;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00064516;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.4516;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                144;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.5942e-7;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.4516e-8;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                1081600;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                2704;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.092903;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                929.03;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                144;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.2957e-5;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                9.2903e-6;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000133;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0532;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                4046.86;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                40468600;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.273e+6;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                43560;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.404686;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                5.799;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2319.7;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e4;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e8;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.55e7;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                107639;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.47105;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                14.33;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                5732.2;
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
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                697.8;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6978000;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1081600;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                7511.1;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.47105;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                14.33;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                400;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kanda() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.744;
        return z.toStringAsFixed(2);
      case 'cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                17445.12;
        return z.toStringAsFixed(2);
      case 'inch²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2704;
        return z.toStringAsFixed(2);
      case 'feet²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                18.77;
        return z.toStringAsFixed(2);
      case 'Acre':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                4.31e-4;
        return z.toStringAsFixed(2);
      case 'Hectare':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00017;
        return z.toStringAsFixed(2);
      case 'Bigha':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                400;
        return z.toStringAsFixed(2);
      case 'Kanda':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

mpersec() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'feet/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.281;
        return z.toStringAsFixed(2);
      case 'km/hr':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) /
                3.6;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

feetpersec() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.3048;
        return z.toStringAsFixed(2);
      case 'feet/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'km/hr':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.097;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kmperhr() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'm/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.27778;
        return z.toStringAsFixed(2);
      case 'feet/sec':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.9113;
        return z.toStringAsFixed(2);
      case 'km/hr':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) / 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

newton() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Newton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kgf':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.101972;
        return z.toStringAsFixed(2);
      case 'dyne':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                100000;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kgf() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Newton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                9.80665;
        return z.toStringAsFixed(2);
      case 'kgf':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'dyne':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                980665;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

dyne() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Newton':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-5;
        return z.toStringAsFixed(2);
      case 'kgf':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'dyne':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.01972e-6;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

joule() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'J(Joule)':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kJ':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-3;
        return z.toStringAsFixed(2);
      case 'btu':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000947817;
        return z.toStringAsFixed(2);
      case 'kWh':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.7778e-7;
        return z.toStringAsFixed(2);
      case 'eV':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.242e+18;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kJ() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'J(Joule)':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(2);
      case 'kJ':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'btu':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.947817;
        return z.toStringAsFixed(2);
      case 'kWH':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000277778;
        return z.toStringAsFixed(2);
      case 'eV':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.242e+21;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

btu() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'J(Joule)':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1055.06;
        return z.toStringAsFixed(2);
      case 'kJ':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.055;
        return z.toStringAsFixed(2);
      case 'btu':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kWH':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000293071;
        return z.toStringAsFixed(2);
      case 'eV':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.585e+21;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kwH() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'J(Joule)':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.6e+6;
        return z.toStringAsFixed(2);
      case 'kJ':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3600;
        return z.toStringAsFixed(2);
      case 'btu':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3412.14;
        return z.toStringAsFixed(2);
      case 'kWH':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'eV':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.247e+25;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

eV() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'J(Joule)':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.6022e-19;
        return z.toStringAsFixed(2);
      case 'kJ':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.6022e-22;
        return z.toStringAsFixed(2);
      case 'btu':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.5186e-22;
        return z.toStringAsFixed(2);
      case 'kWH':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                4.4505e-26;
        return z.toStringAsFixed(2);
      case 'eV':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

hp() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'HP':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kW':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.7457;
        return z.toStringAsFixed(2);
      case 'W':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                745.7;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kW() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'HP':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.34102;
        return z.toStringAsFixed(2);
      case 'kW':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'W':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1000;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

watt() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'HP':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.34102e-3;
        return z.toStringAsFixed(2);
      case 'kW':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1e-3;
        return z.toStringAsFixed(2);
      case 'W':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

psi() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                6.89476;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.068046;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0689476;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                51.7149;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                2.03602;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                703.069578;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.070307;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

kPa() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.145038;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00986923;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.01;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                7.50062;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.2953;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                101.97162;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.070307;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

atm() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                14.6959;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                101.325;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.01325;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                760.00;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                29.9213;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                101.97162;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.03323;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

bar() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                14.5038;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                100;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.986923;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                750.062;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                29.53;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                10197.16;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                1.01972;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

mmHg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0193368;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.1333;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00131579;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00133322;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0393701;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                13.595098;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00135951;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

inchHg() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.491154;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                3.3863;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0334211;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0338639;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                25.4;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                13.595098;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0345316;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

mmh20() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.001422;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.00980638;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.000097;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0000980665;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0735561;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0028959;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.0001;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

kgcmsqure() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'psi':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                14.2233;
        return z.toStringAsFixed(2);
      case 'kPa':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                98.0665;
        return z.toStringAsFixed(2);
      case 'atm':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.967841;
        return z.toStringAsFixed(2);
      case 'bar':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.980665;
        return z.toStringAsFixed(2);

      case 'mmHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                735.559;
        return z.toStringAsFixed(2);
      case 'inchHg':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                28.959;
        return z.toStringAsFixed(2);
      case 'mmH₂O':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                10000;
        return z.toStringAsFixed(2);
      case 'kg/cm²':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      default:
        return '';
    }
  } catch (e) {}
}

centigrade() {
  try {
    switch (CalculatorState.myController2.text) {
      case '⁰C':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case '⁰F':
        var z =
            (double.parse(CalculatorState.displayResult.split('=').join('')) *
                    1.8) +
                32;
        return z.toStringAsFixed(2);
      case '⁰K':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) +
                273.15;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

faranheight() {
  try {
    switch (CalculatorState.myController2.text) {
      case '⁰C':
        var z =
            (double.parse(CalculatorState.displayResult.split('=').join('')) -
                    32) *
                0.5556;
        return z.toStringAsFixed(2);
      case '⁰F':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) * 1;
        return z.toStringAsFixed(2);
      case '⁰K':
        var z =
            ((double.parse(CalculatorState.displayResult.split('=').join('')) -
                        32) *
                    0.55560) +
                273.15;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

kelvin() {
  try {
    switch (CalculatorState.myController2.text) {
      case '⁰C':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) -
                273.15;
        return z.toStringAsFixed(2);
      case '⁰F':
        var z =
            ((double.parse(CalculatorState.displayResult.split('=').join('')) -
                        273.15) *
                    1.8) +
                32;
        return z.toStringAsFixed(2);
      case '⁰K':
        var z = double.parse(CalculatorState.displayResult.split('=').join(''));
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

gst() {
  try {
    switch (CalculatorState.myController2.text) {
      case 'Tax 28%':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.28;
        return z.toStringAsFixed(2);
      case 'Tax 18%':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.18;
        return z.toStringAsFixed(2);
      case 'Tax 12%':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.12;
        return z.toStringAsFixed(2);
      case 'Tax 5%':
        var z =
            double.parse(CalculatorState.displayResult.split('=').join('')) *
                0.05;
        return z.toStringAsFixed(2);

      default:
        return '';
    }
  } catch (e) {}
}

fact(n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    for (var i = n - 1; i >= 1; i--) {
      n = n * i;
      //print( i);
    }
  }
  return n;
}
