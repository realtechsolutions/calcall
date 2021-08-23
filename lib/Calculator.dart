import 'dart:ui';
import 'package:calcall/appState.dart';
import 'package:calcall/unititem.dart';
import 'package:calcall/unitsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'DisplayScreen.dart';
import 'package:function_tree/function_tree.dart';
import 'package:calcall/unitsList2.dart';
import 'package:calcall/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  late BannerAd banner;
  @override
  void initState() {
    super.initState();
    checkunit1();

    banner = BannerAd(
        size: AdSize.banner,
        adUnitId: 'ca-app-pub-2974455624523400/8947351261',
        listener: BannerAdListener(),
        request: AdRequest());
    banner.load();
  }

  checkunit1() async {
    String unit1 = await getUnit1() ?? '';
    myController.text = unit1;
    String unit2 = await getUnit2() ?? '';
    myController2.text = unit2;
  }

  @override
  void dispose() {
    super.dispose();
    banner.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Stack(children: [
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        DisplayScreen(
          displayNum: displayNum,
          displayNum2: displayNum2,
          displayResult: displayResult,
          hideUnits: hideUnits,
          icon1: icon1,
          sciButtonHandler: sciButtonHandler,
          printText: printText,
          myController: myController,
          myController2: myController2,
          showUnit2: showUnit2,
        ),
        InkWell(
          onTap: sciButtonHandler,
          child: Container(
              child: Center(child: icon1),
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.blueAccent),
        ),
        Container(
          margin: EdgeInsets.only(top: 0),
          child: Column(
            children: [
              Row(children: [
                buton('    Shift', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    Rad', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(btnsText[0], btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(btnsText[1], btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(btnsText[2], btnVisibility, fs, btnpading,
                    colour: Colors.black),
              ]),
              Row(children: [
                buton('    ^', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(btnsText[3], btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(btnsText[4], btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    (', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    )', btnVisibility, fs, btnpading,
                    colour: Colors.black),
              ]),
              Row(children: [
                buton('    x\u00B2', btnVisibility, fs, btnpading,
                    colour: Colors.black),
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
                buton('    %', true, fs, btnpading, colour: Colors.black),
                buton('    \u00F7', true, fs, btnpading, colour: Colors.black),
              ]),
              Row(children: [
                buton('    !', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton(
                  '    7',
                  true,
                  fs,
                  btnpading,
                  colour: Colors.black,
                  align: Alignment.center,
                ),
                buton('    8', true, fs, btnpading,
                    colour: Colors.black, backspace: null),
                buton('    9', true, fs, btnpading, colour: Colors.black),
                buton('    \u00D7', true, fs, btnpading, colour: Colors.black),
              ]),
              Row(children: [
                buton('    1/x', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    4', true, fs, btnpading, colour: Colors.black),
                buton('    5', true, fs, btnpading, colour: Colors.black),
                buton('    6', true, fs, btnpading, colour: Colors.black),
                buton('    -', true, fs, btnpading, colour: Colors.black),
              ]),
              Row(children: [
                buton('    \u03C0', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    1', true, fs, btnpading, colour: Colors.black),
                buton('    2', true, fs, btnpading, colour: Colors.black),
                buton('    3', true, fs, btnpading, colour: Colors.black),
                buton('    +', true, fs, btnpading, colour: Colors.black),
              ]),
              Row(children: [
                buton('    e', btnVisibility, fs, btnpading,
                    colour: Colors.black),
                buton('    \u221A', true, fs, btnpading, colour: Colors.black),
                buton('    0', true, fs, btnpading, colour: Colors.black),
                buton('    .', true, fs, btnpading, colour: Colors.black),
                buton(
                  '    =',
                  true,
                  fs,
                  btnpading,
                  colour: Colors.white,
                  backcolour: Colors.deepOrange,
                )
              ]),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 0),
          height: 60,
          width: double.infinity,
          child: AdWidget(ad: banner),
        )
      ]),
      Consumer<AppState>(
        builder: (context, listviewVisibility, child) => Visibility(
          visible: listviewVisibility.listviewVisibility,
          child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.355,
                  left: MediaQuery.of(context).size.width * 0.50,
                  bottom: 62),
              padding: EdgeInsets.only(top: 0),
              height: MediaQuery.of(context).size.height * 0.62,
              width: 180,
              alignment: Alignment.topRight,
              child: UnitsList(
                  searchedListitem, addUnitTotextfield, hideListView)),
        ),
      ),
      Consumer<AppState>(
        builder: (context, listviewVisibility, child) => Visibility(
          visible: listviewVisibility.listviewVisibility2,
          child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: MediaQuery.of(context).size.width * 0.55),
              padding: EdgeInsets.only(top: 0),
              height: MediaQuery.of(context).size.height * 0.5,
              width: 180,
              alignment: Alignment.topRight,
              child: UnitsList2(
                  searchedListitem2, addUnitTotextfield, hideListView)),
        ),
      ),
    ]);
  }

  static getUnit1() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? unit1 = pref.getString('unit1');
    return unit1;
  }

  static getUnit2() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? unit2 = pref.getString('unit2');
    return unit2;
  }

  static TextEditingController myController = TextEditingController();
  static TextEditingController myController2 = TextEditingController();
  bool unitsVisibility = false;
  bool btnVisibility = false;
  // static bool listViewVisibility = false;
  double fs = 27;
  double btnpading = 17;
  double leftpad = 5;
  static double screenHeight = 0;
  //static double displyScreenHeight = screenHeight * 0.36;
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
    });
  }

  hideUnits() {
    setState(() {});
  }

  sciButtonHandler() {
    setState(() {
      if (btnVisibility) {
        btnVisibility = !btnVisibility;
        fs = 27.0;
        btnpading = 17;
        icon1 = Icon(
          Icons.expand_more,
          color: Colors.white,
        );
        //screenHeight =screenHeight * 0.36;
      } else {
        btnVisibility = !btnVisibility;
        fs = 17.0;
        btnpading = 14;

        icon1 = Icon(
          Icons.expand_less,
          color: Colors.white,
        );
        //screenHeight = screenHeight * 0.34;
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
    double btnpadding, {
    Color? colour,
    Color? backcolour,
    IconData? backspace,
    Alignment? align,
  }) {
    btnHandler() {
      setState(() {
        context.read<AppState>().hidelistview();
        context.read<AppState>().displayNumfs();
        context.read<AppState>().hidelistview2();
        int index = 0;
        switch (btnText.trim()) {
          case 'AC':
            displayNum = '';
            displayNum2 = '';
            displayResult = '';
            context.read<AppState>().ac();
            break;
          case '':
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
            if (btnsText[0].trim() == 'sin') {
              btnsText.replaceRange(0, 4, [
                '  sin\u207B\u00B9',
                '  cos\u207B \u00B9',
                "  tan\u207B\u00B9",
                '  eˣ',
                '  10ˣ'
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

          case '%':
            displayNum += '/100';
            break;

          case 'eˣ':
            displayNum += 'e^';
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
            displayResult = (fact(double.parse(a))).toString();
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
      if (myController.text.trim() == "GST") {
        context.read<AppState>().gst();
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
            )),
      ),
    );
  }
}
