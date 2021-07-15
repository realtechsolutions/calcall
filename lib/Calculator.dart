import 'package:calcall/listviewvisibility.dart';
import 'package:calcall/unititem.dart';
import 'package:calcall/unitsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DisplayScreen.dart';
import 'package:function_tree/function_tree.dart';
import 'package:calcall/unitsList2.dart';
import 'package:intl/intl.dart';

//import 'main.dart';
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
        displayResult: displayResult,
        hideUnits: hideUnits,
        searchList: searchList,
        icon1: icon1,
        sciButtonHandler: sciButtonHandler,
        printLatestValue: printLatestValue,
        printText: printText,
        myController: myController,
        myController2: myController2,
        showUnit2: showUnit2,
      ),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white70,
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
                  buton('x \u00B2', btnVisibility, fs, btnpading),
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
        Consumer<ListviewVisibility>(
          builder: (context, ListviewVisibility, child) => Visibility(
            visible: ListviewVisibility.listviewVisibility,
            child: Expanded(
                flex: 2,
                child: Container(
                    //color: Colors.amber,
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 0),
                    height: 300,
                    width: 180,
                    alignment: Alignment.topRight,
                    child: Expanded(
                      child: UnitsList(
                          searchedListitem, addUnitTotextfield, hideListView),
                    ))),
          ),
        ),
        Consumer<ListviewVisibility>(
          builder: (context, ListviewVisibility, child) => Visibility(
            visible: ListviewVisibility.listviewVisibility2,
            child: Expanded(
                flex: 2,
                child: Container(
                    //color: Colors.amber,
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 0),
                    height: 300,
                    width: 300,
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

  //bool listViewVisibility = false;
  static final TextEditingController myController = TextEditingController();
  static final TextEditingController myController2 = TextEditingController();
  bool unitsVisibility = false;
  bool btnVisibility = false;
  // static bool listViewVisibility = false;
  double fs = 25.0;
  double btnpading = 16.0;
  List<String> btnsText = [
    'sin',
    'cos',
    'tan',
  ];
  Icon icon1 = Icon(Icons.expand_more);
  static String displayNum = '';

  static String displayNum2 = '';

  static String displayResult = '';

  static List<UnitItem> searchedListitem = UnitsList.listItem;
  static List<UnitItem> searchedListitem2 = UnitsList2.listItem;

  // int index = 1;
  printLatestValue() {
    print(myController.text);
    //if (DisplayScreenState().myController.text == '') {
    //searchedListitem = UnitsList.listItem;
    //} else //{
    setState(() {
      //print('objecting');
      try {
        searchedListitem = UnitsList.listItem
            .where((element) =>
                element.name.contains(myController.text.toString()))
            .toList();
      } catch (e) {
        print(e);
      }
    });
    //}
    print('${myController.text}');
  }

  void printText(text) {
    setState(() {
      print(text);
      searchedListitem = UnitsList.listItem
          .where((element) => element.name
              .toLowerCase()
              .contains(text.toString().toLowerCase()))
          .toList();
    });
  }

  showUnit2() {
    //context.read<ListviewVisibility>().showListView2();

    //print('something');
    //print('${UnitsList.listItem[1].type}...true');
    setState(() {
      //var obj = UnitsList.listItem
      //.firstWhere((element) => element.name == myController.text);
      // print(obj.name);
      //var i = 0;
      for (var i = 0; i < UnitsList.listItem.length; i++) {
        if (UnitsList.listItem[i].name == myController.text) {
          print(i);
          searchedListitem2 = UnitsList2.listItem
              .where((element) => element.type == UnitsList.listItem[i].type)
              .toList();

          //return i;
        }
        //print(i);
      }
      //searchedListitem = UnitsList.listItem
      //.where((element) => element.type == UnitsList.listItem[i].type)
      //.toList();
      // print('$i  printing');
      // print(searchedListitem[i].type);
      print('${myController.text}...works');
      // ListviewVisibility = true;
      //.toLowerCase()
      //.contains(text.toString().toLowerCase()))
      //.toList();
    });
  }

  hideUnits() {
    setState(() {
      //listViewVisibility = true;
    });
    // print('text');
  }

  sciButtonHandler() {
    setState(() {
      if (btnVisibility) {
        btnVisibility = !btnVisibility;
        fs = 25.0;
        btnpading = 16;
        icon1 = Icon(Icons.expand_more);
      } else {
        btnVisibility = !btnVisibility;
        fs = 14.0;
        btnpading = 16;

        icon1 = Icon(Icons.expand_less);
      }
    });
    //print('ingfnk');
  }

  searchList() {
    try {
      setState(() {
        print('objecting');
        searchedListitem = UnitsList.listItem
            .where((element) => element.name.contains('m'))
            .toList();
      });

      print(searchedListitem);
    } catch (e) {
      print(e);
    }
  }

  addUnitTotextfield() {
    // print('new ${myController.text.toString()}');
    //print(searchedListitem[index].name);
    //print(index);
    // myController.text = '9999';
    //print(myController.text);
  }

  hideListView() {
    setState(() {
      //listViewVisibility = false;
    });
  }

  Widget buton(String btnText, bool isvisible, double fs, double btnpadding) {
    btnHandler() {
      //print('btnText');
      setState(() {
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
            displayNum = displayResult;
            break;
          // case 'Sin':
          //displayNum = displayNum + 'Sin(';
          // displayNum += '(';
          // break;
          default:
            displayNum = displayNum + btnText;
        }
        if (displayNum.length % 4 == 0
            //displayNum.length == 8 ||
            //displayNum.length == 10
            ) {
          //displayNum = displayNum + '$btnText,';
          displayNum = displayNum.replaceAllMapped(
              RegExp(r'[0-9](?=([0-9][0-9][0-9])+$)'), (match) => '${match[0]},');
        } else {}

//RegExp exp = RegExp( r'\d(?=(\d{3})+$)
        //var z=bool.replaceAllMapped(exp,(match)=>'${match[0]},');

        var a = displayNum.split('÷').join('/').split('×').join('*');
        //displayNum = double.parse(displayNum).toLocale()

        //if (displayNum.length == 4 ||
        // displayNum.length == 7 ||
        //displayNum.length == 10) {
        //displayNum = displayNum.replaceAllMapped(
        //RegExp(r'\d(?=(\d{3}))'), (match) => '${match[0]},');
        //displayNum = ',$displayNum';
        //}

        try {
          displayResult = a.interpret().toString();

          //Parser P = Parser();

          //Expression exp = P.parse(displayNum);
          //ContextModel cm = ContextModel();
          //String eval = exp.evaluate(EvaluationType.REAL, cm).toString();
          //displayResult = displayNum.interpret();
        } catch (e) {
          //print(e);
        }
        //int index = 0;

        for (var item in UnitsList.listItem) {
          if (item.name == myController.text) {
            index = UnitsList.listItem.indexOf(item);
          }
          //UnitsList.listItem[0].calculate();
        }
        if (displayResult != '') {
          displayNum2 = UnitsList.listItem[index].calculate();
        }
      });
      // print(DisplayScreen().displayNum);
      //DisplayScreenState.displayNum += no;
    }

    return Visibility(
      visible: isvisible,
      child: Expanded(
        child: OutlinedButton(
          // padding: EdgeInsets.all(25.0),

          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: btnpading),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          //backgroundColor: Colors.grey, ),

          onPressed: btnHandler,

          child: Text(btnText,
              style: TextStyle(fontSize: fs, color: Colors.black54)),
        ),
      ),
    );
  }
}
