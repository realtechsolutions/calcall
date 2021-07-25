import 'package:calcall/Calculator.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool listviewVisibility = false;
  bool listviewVisibility2 = false;
  bool sizedBox1Visibility = true;
  // bool sizedBox2Visibility = true;
  bool cgstVisibility = false;
  bool unit2Visibility = false;
  bool unit1Visibility = false;
  bool displayResultVisibility = true;
  double sizeboxheight = 25;
  double fsDisplayNum = 45;

  Icon icon2 = Icon(
    Icons.chevron_left,
    color: Colors.white,
  );
  String displayNum3 = '';
  String displayNum4 = '';
  //enum noAlignment = TextAlign.end;
  TextAlign noAlignment = TextAlign.end;

  TextEditingController cgst = TextEditingController(text: 'CGST/IGST');
  TextEditingController tax = TextEditingController(text: 'Tax');
  TextEditingController total = TextEditingController(text: 'Total ');

  gstListTileHandler() {
    cgstVisibility = true;
    //unit2Visibility = false;
    sizeboxheight = 0;
    notifyListeners();
  }

  hideGst() {
    cgstVisibility = false;
    sizeboxheight = 25;
    notifyListeners();
  }

  hidelistview() {
    listviewVisibility = false;
    notifyListeners();
  }

  showListView() {
    listviewVisibility = true;
    notifyListeners();
  }

  hidelistview2() {
    listviewVisibility2 = false;
    notifyListeners();
  }

  showListView2() {
    listviewVisibility2 = true;
    notifyListeners();
  }

  unitDisplay() {
    if (unit1Visibility == false) {
      unit1Visibility = true;
      unit2Visibility = true;
      fsDisplayNum = 25;
      if (CalculatorState.myController.text.contains('GST')) {
        gstListTileHandler();
      }
      noAlignment = TextAlign.center;
      //cgstVisibility = false;
      displayResultVisibility = false;
      icon2 = Icon(
        Icons.chevron_right,
        color: Colors.white,
      );
    } else {
      icon2 = Icon(Icons.chevron_left, color: Colors.white);
      fsDisplayNum = 45;
      noAlignment = TextAlign.end;

      //iconNumber = 0;
      unit1Visibility = false;
      unit2Visibility = false;
      displayResultVisibility = true;
      if (CalculatorState.myController.text.contains('GST')) {
        cgstVisibility = false;
        //unit2Visibility = false;
        sizeboxheight = 25;
      }
    }

    notifyListeners();
  }

  gst() {
    try {
      switch (CalculatorState.myController2.text) {
        case 'Tax 28%':
          var z =
              double.parse(CalculatorState.displayResult.split('=').join(''));
          displayNum3 = (z * 0.14).toStringAsFixed(2);
          displayNum4 = (z * 1.28).toStringAsFixed(2);

          break;
        case 'Tax 18%':
          var z =
              double.parse(CalculatorState.displayResult.split('=').join(''));
          displayNum3 = (z * 0.09).toString();
          displayNum4 = (z * 1.18).toString();

          break;
        case 'Tax 12%':
          var z =
              double.parse(CalculatorState.displayResult.split('=').join(''));
          displayNum3 = (z * 0.06).toString();
          displayNum4 = (z * 1.12).toString();

          break;
        case 'Tax 5%':
          var z =
              double.parse(CalculatorState.displayResult.split('=').join(''));
          displayNum3 = (z * 0.025).toString();
          displayNum4 = (z * 1.05).toString();

          //return z.toStringAsFixed(2);
          break;
        default:
          return 'incorect';
      }
    } catch (e) {}
    notifyListeners();
  }

  ac() {
    displayNum3 = '';
    displayNum4 = '';
    notifyListeners();
  }

  displayNumfs() {
    if (CalculatorState.displayNum.length > 11 || unit1Visibility == true) {
      fsDisplayNum = 25;
    } else {
      fsDisplayNum = 45;
    }
  }

  //displayNumCenter() {
  // noAlignment = TextAlign.center;
  ////}
}