import 'dart:math';

import 'package:calcall/appState.dart';
import 'package:calcall/unititem.dart';
import 'package:calcall/unitsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DisplayScreen.dart';
import 'package:function_tree/function_tree.dart';
import 'package:calcall/unitsList2.dart';
import 'package:calcall/helper.dart';

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      DisplayScreen(
        displayNum: displayNum,
        displayNum2: displayNum2,
        // displayNum3: displayNum3,
        //displayNum4: displayNum4,
        displayResult: displayResult,
        hideUnits: hideUnits,
        //searchList: searchList,
        icon1: icon1,
        sciButtonHandler: sciButtonHandler,
        // printLatestValue: printLatestValue,
        printText: printText,
        myController: myController,
        myController2: myController2,
        showUnit2: showUnit2,
      ),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: [
                Row(children: [
                  buton('Shift', btnVisibility, fs, btnpading),
                  buton('Rad', btnVisibility, fs, btnpading),
                  buton(btnsText[0], btnVisibility, fs, btnpading),
                  buton(btnsText[1], btnVisibility, fs, btnpading),
                  buton(btnsText[2], btnVisibility, fs, btnpading),
                ]),
                Row(children: [
                  buton('^', btnVisibility, fs, btnpading),
                  buton('log', btnVisibility, fs, btnpading),
                  buton('ln', btnVisibility, fs, btnpading),
                  buton('(', btnVisibility, fs, btnpading),
                  buton(')', btnVisibility, fs, btnpading),
                ]),
                Row(children: [
                  buton('x\u00B2', btnVisibility, fs, btnpading),
                  buton('AC', true, fs, btnpading),
                  buton('C', true, fs, btnpading),
                  buton('%', true, fs, btnpading),
                  buton('\u00F7', true, fs, btnpading),
                ]),
                Row(children: [
                  buton('!', btnVisibility, fs, btnpading),
                  buton('7', true, fs, btnpading),
                  buton('8', true, fs, btnpading),
                  buton('9', true, fs, btnpading),
                  buton('\u00D7', true, fs, btnpading),
                ]),
                Row(children: [
                  buton('1/x', btnVisibility, fs, btnpading),
                  buton('4', true, fs, btnpading),
                  buton('5', true, fs, btnpading),
                  buton('6', true, fs, btnpading),
                  buton('-', true, fs, btnpading),
                ]),
                Row(children: [
                  buton('\u03C0', btnVisibility, fs, btnpading),
                  buton('1', true, fs, btnpading),
                  buton('2', true, fs, btnpading),
                  buton('3', true, fs, btnpading),
                  buton('+', true, fs, btnpading),
                ]),
                Row(children: [
                  buton('e', btnVisibility, fs, btnpading),
                  buton('\u221A', true, fs, btnpading),
                  buton('0', true, fs, btnpading),
                  buton('.', true, fs, btnpading),
                  buton('=', true, fs, btnpading),
                ]),
                // SizedBox(
                // height: 39.0,
                //)
              ],
            ),
          ),
        ),
        Consumer<AppState>(
          builder: (context, listviewVisibility, child) => Visibility(
            visible: listviewVisibility.listviewVisibility,
            child: Expanded(
                flex: 2,
                child: Container(
                    //color: Colors.amber,
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 0),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 180,
                    alignment: Alignment.topRight,
                    child: Expanded(
                      child: UnitsList(
                          searchedListitem, addUnitTotextfield, hideListView),
                    ))),
          ),
        ),
        Consumer<AppState>(
          builder: (context, listviewVisibility, child) => Visibility(
            visible: listviewVisibility.listviewVisibility2,
            child: Expanded(
                flex: 2,
                child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 0),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 180,
                    alignment: Alignment.topRight,
                    child: Expanded(
                      child: UnitsList2(
                          searchedListitem2, addUnitTotextfield, hideListView),
                    ))),
          ),
        ),
      ])
    ]);
  }

  static final TextEditingController myController = TextEditingController();
  static final TextEditingController myController2 = TextEditingController();
  bool unitsVisibility = false;
  bool btnVisibility = false;
  // static bool listViewVisibility = false;
  double fs = 26;
  double btnpading = 16.0;
  List<String> btnsText = [
    'sin',
    'cos',
    'tan',
  ];
  Icon icon1 = Icon(
    Icons.expand_more,
    color: Colors.white,
  );
  //static String displayNum4 = '';
  //static String displayNum3 = '';
  static String displayNum2 = '';
  static String displayNum = '';
  static String displayResult = '';

  static List<UnitItem> searchedListitem = UnitsList.listItem
      .where((element) => !element.name.contains('%'))
      .toList();
  static List<UnitItem> searchedListitem2 = UnitsList2.listItem
      .where((element) => !element.name.contains('GST'))
      .toList();

  void printText(text) {
    setState(() {
      // print(text);
      searchedListitem = UnitsList.listItem
          .where((element) =>
              element.name
                  .toLowerCase()
                  .contains(text.toString().toLowerCase()) &&
              !element.name.contains('Tax'))
          .toList();
    });
  }

  showUnit2() {
    setState(() {
      for (var i = 0; i < UnitsList.listItem.length; i++) {
        if (UnitsList.listItem[i].name == myController.text) {
          //print(i);
          searchedListitem2 = UnitsList2.listItem
              .where((element) =>
                  element.type == UnitsList.listItem[i].type &&
                  !element.name.contains('GST'))
              .toList();
        }
      }
      print('${myController.text}...works');
    });
  }

  hideUnits() {
    setState(() {});
  }

  sciButtonHandler() {
    setState(() {
      if (btnVisibility) {
        btnVisibility = !btnVisibility;
        fs = 26.0;
        btnpading = 17;
        icon1 = Icon(
          Icons.expand_more,
          color: Colors.white,
        );
      } else {
        btnVisibility = !btnVisibility;
        fs = 16.0;
        btnpading = 14;

        icon1 = Icon(
          Icons.expand_less,
          color: Colors.white,
        );
      }
    });
  }

  addUnitTotextfield() {}

  hideListView() {
    setState(() {});
  }

  Widget buton(String btnText, bool isvisible, double fs, double btnpadding) {
    btnHandler() {
      setState(() {
        context.read<AppState>().hidelistview();
        int index = 0;
        switch (btnText) {
          case 'AC':
            displayNum = '';
            displayNum2 = '';
            displayResult = '';
            break;
          case 'C':
            displayNum = displayNum.substring(0, displayNum.length - 1);
            break;
          case '÷':
            displayNum += '÷';

            break;
          case '×':
            displayNum += '×';
            break;
          case '+':
            displayNum += '+';
            break;
          case '-':
            displayNum += '-';
            break;
          case 'Shift':
            if (btnsText[0] == 'sin') {
              btnsText.replaceRange(0, 2,
                  ['sin\u207B\u00B9', 'cos\u207B \u00B9', "tan\u207B\u00B9"]);
            } else {
              btnsText.replaceRange(0, 2, ['sin', 'cos', "tan"]);
            }

            break;
          case '=':
            displayNum = displayResult.split('=').join('');
            break;
          case 'x²':
            displayNum += '^2';
            break;
          case '1/x':
            displayNum = '1/$displayNum';
            break;
          case 'π':
            displayNum = '3.141';
            break;
          //case '!':
          //displayNum += ' $btnText';
          //displayResult = double.parse(displayNum).toString();
          //break;

          case '%':
            displayNum += '/100';
            //displayResult = double.parse(displayNum).toString();
            break;

          //case '√':

          //displayNum += '^0.5';
          //displayResult = sqrt(double.parse(displayNum)).toString();
          //break;

          default:
            if (btnText.contains(RegExp(r'[sctl]'))) {
              displayNum = displayNum + '$btnText(';
            } else {
              displayNum = displayNum + btnText;
            }
        }
        if (!displayNum.contains(RegExp(r'[.+-]'))) {
          displayNum = displayNum.replaceAll(',', '');
          print(displayNum);
          displayNum = displayNum.replaceAllMapped(
              RegExp(r'\d(?=(\d{3})+$)'), (match) => '${match[0]},');
        } else {}

        var a = displayNum
            .split('÷')
            .join('/')
            .split('×')
            .join('*')
            .split(',')
            .join('');
        //a = a.replaceAllMapped('√', (match) =>
        // null)

        try {
          displayResult = '=${a.interpret().toString()}';
          if (a.contains('√')) {
            a = a.split('√').join('') + '^0.5';
            displayResult = a.interpret().toString();
          }
          if (a.contains('log')) {
            a += '/2.302585';
            //a = a.split('√').join('') + '^0.5';
            displayResult = a.interpret().toString();
          }
          if (a.contains('!')) {
            a = a.split('!').join('');
            print(a);
            displayResult = (fact(double.parse(a))).toString();
            // a += '/2.302585';
            //a = a.split('√').join('') + '^0.5';
            //var
            //displayResult = a.interpret().toString();
          }
        } catch (e) {}

        for (var item in UnitsList.listItem) {
          if (item.name == myController.text) {
            index = UnitsList.listItem.indexOf(item);
          }
        }
        if (displayResult != '') {
          displayNum2 = UnitsList.listItem[index].calculate();
        }
      });
      print(myController.text.trim() == 'GST');
      if (myController.text.trim() == "GST") {
        print('true gst');
        context.read<AppState>().gst();
        print(AppState().displayNum3);
      }
    }

    return Visibility(
      visible: isvisible,
      child: Expanded(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: btnpading),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          onPressed: btnHandler,
          child: Text(btnText,
              style: TextStyle(fontSize: fs, color: Colors.black54)),
        ),
      ),
    );
  }
}
