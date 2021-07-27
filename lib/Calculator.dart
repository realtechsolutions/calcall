//import 'dart:math';

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
    return Column(//mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
      Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          alignment: AlignmentDirectional.topEnd,
          children: [
            // Expanded(
            //flex: 2,
            //child:
            Container(
              margin: EdgeInsets.only(top: 0),
              //color: Colors.grey[100],
              child: Column(
                children: [
                  Row(children: [
                    buton('    Shift', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    Rad', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(btnsText[0], btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(btnsText[1], btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(btnsText[2], btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    ^', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(btnsText[3], btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(btnsText[4], btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    (', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    )', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    x\u00B2', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(
                      '    AC',
                      true,
                      fs,
                      btnpading,
                      colour: Colors.deepOrange,
                      backspace: (null),
                    ),
                    buton(' ', true, fs, btnpading,
                        //, colour: Colors.deepOrange,
                        backspace: (Icons.backspace_outlined),
                        colour: Colors.deepOrange,
                        align: Alignment.center),
                    buton('    %', true, fs, btnpading, colour: Colors.black54),
                    buton('    \u00F7', true, fs, btnpading,
                        colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    !', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton(
                      '    7',
                      true,
                      fs,
                      btnpading,
                      colour: Colors.black54,
                      align: Alignment.center,
                    ),
                    buton('    8', true, fs, btnpading,
                        colour: Colors.black54, backspace: null),
                    buton('    9', true, fs, btnpading, colour: Colors.black54),
                    buton('    \u00D7', true, fs, btnpading,
                        colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    1/x', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    4', true, fs, btnpading, colour: Colors.black54),
                    buton('    5', true, fs, btnpading, colour: Colors.black54),
                    buton('    6', true, fs, btnpading, colour: Colors.black54),
                    buton('    -', true, fs, btnpading, colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    \u03C0', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    1', true, fs, btnpading, colour: Colors.black54),
                    buton('    2', true, fs, btnpading, colour: Colors.black54),
                    buton('    3', true, fs, btnpading, colour: Colors.black54),
                    buton('    +', true, fs, btnpading, colour: Colors.black54),
                  ]),
                  Row(children: [
                    buton('    e', btnVisibility, fs, btnpading,
                        colour: Colors.black54),
                    buton('    \u221A', true, fs, btnpading,
                        colour: Colors.black54),
                    buton('    0', true, fs, btnpading, colour: Colors.black54),
                    buton('    .', true, fs, btnpading, colour: Colors.black54),
                    buton(
                      '    =',
                      true,
                      fs,
                      btnpading,
                      colour: Colors.white,
                      backcolour: Colors.deepOrange,
                    )
                    //left: 10.0),
                  ]),
                  // SizedBox(
                  // height: 39.0,
                  //)
                ],
              ),
            ),
            Consumer<AppState>(
              builder: (context, listviewVisibility, child) => Visibility(
                visible: listviewVisibility.listviewVisibility,
                child: Expanded(
                    //flex: 1,

                    child: Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 0),
                        padding: EdgeInsets.only(top: 0),
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 180,
                        alignment: Alignment.topRight,
                        child: Expanded(
                          child: UnitsList(searchedListitem, addUnitTotextfield,
                              hideListView),
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
                          child: UnitsList2(searchedListitem2,
                              addUnitTotextfield, hideListView),
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
  double btnpading = 17;
  double leftpad = 5;
  List<String> btnsText = [
    '   sin',
    '   cos',
    '   tan',
    '   log',
    '   ln',
  ];
  Icon icon1 = Icon(
    Icons.expand_more,
    color: Colors.white,
  );
  //Icon backspace = Icon(Icons.backspace_outlined);
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
      //print('${myController.text}...works');
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

  Widget buton(
    String btnText,
    bool isvisible,
    double fs,
    double btnpadding,
    //double leftpad,
    {
    Color? colour,
    Color? backcolour,
    IconData? backspace,
    Alignment? align,
  }) {
    btnHandler() {
      setState(() {
        context.read<AppState>().hidelistview();
        context.read<AppState>().displayNumfs();
        context.read<AppState>().hidelistview();
        int index = 0;
        switch (btnText.trim()) {
          case 'AC':
            displayNum = '';
            displayNum2 = '';
            displayResult = '';
            context.read<AppState>().ac();
            break;
          //case ' ⌫':
          // displayNum = displayNum.substring(0, displayNum.length - 1);
          //break;
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
            if (btnsText[0].trim() == 'sin') {
              btnsText.replaceRange(0, 4, [
                '    sin\u207B\u00B9',
                '    cos\u207B \u00B9',
                "    tan\u207B\u00B9",
                '    eˣ',
                '    10ˣ'
              ]);
            } else {
              btnsText.replaceRange(
                  0, 2, ['    sin', '    cos', "    tan", '    log', '    ln']);
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

          case 'eˣ':
            displayNum += 'e^';
            //displayResult = sqrt(double.parse(displayNum)).toString();
            break;
          case '10ˣ':
            displayNum += '10^';
            break;
          default:
            if (btnText.contains(RegExp(r'[sctl]'))) {
              displayNum = displayNum + '${btnText.trim()}(';
            } else {
              displayNum = displayNum + btnText.trim();
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
        //if (backspace == Icons.backspace_outlined) {
        //displayNum = displayNum.substring(0, displayNum.length - 1);
        // displayNum = displayNum.substring(0, displayNum.length - 1);
        // print(displayNum);
        //}
      });
      // print(myController.text.trim() == 'GST');
      if (myController.text.trim() == "GST") {
        // print('true gst');
        context.read<AppState>().gst();
        //print(AppState().displayNum3);
      }
    }

    return Visibility(
      visible: isvisible,
      child: Expanded(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: backcolour,
                alignment: align,
                padding: EdgeInsets.symmetric(vertical: btnpading),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            onPressed: btnHandler,
            child: RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                text: btnText,
                style: TextStyle(fontSize: fs, color: colour),
                children: [
                  WidgetSpan(
                      child: Icon(
                    backspace,
                    color: Colors.deepOrange,
                    size: fs,
                  ))
                ],
              ),
              //label: Text(btnText,
              //style: TextStyle(
              //fontSize: fs,
              //color: colour,
            )),
        //icon: Icon(backspace),
      ),
    );
  }

  /* Widget iconbuton(
    String btnText,
    bool isvisible,
    double fs,
    double btnpadding, {
    Color? colour,
    Color? backcolour,
    IconData? backspace,
  }) {
    btnHandler() {
      setState(() {
        displayNum = displayNum.substring(0, displayNum.length - 1);
      });
      // print(myController.text.trim() == 'GST');
      // if (myController.text.trim() == "GST") {
      // print('true gst');
      //context.read<AppState>().gst();
      //print(AppState().displayNum3);
      // }
    }

    return Visibility(
        visible: isvisible,
        child: Expanded(
          child: OutlinedButton(
            //label: Text(
            //'C',
            //style: TextStyle(fontSize: fs,),
            // ),
            //icon: Icon(
            // null,
            //size: fs,
            //color: Colors.deepOrange,
            //),
            style: OutlinedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: backcolour,
                padding: EdgeInsets.symmetric(vertical: btnpading),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            onPressed: btnHandler,

            child: RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                text: btnText,
                style: TextStyle(fontSize: fs, color: colour),
                children: [
                  WidgetSpan(
                      child: Icon(
                    backspace,
                    color: Colors.deepOrange,
                    size: fs,
                  ))
                ],
              ),
              /*child: Text(btnText,
              style: TextStyle(
                fontSize: fs,
                color: colour,
              )),*/
            ),
          ),
        ));
  }*/
}
