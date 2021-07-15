//import 'package:calcall/Calculator.dart';
import 'package:calcall/listviewvisibility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'Calculator.dart';
import 'package:provider/provider.dart';

class DisplayScreen extends StatefulWidget {
  final String displayNum;
  final String displayNum2;
  final String displayResult;
  final Function hideUnits;
  final Function searchList;
  final Icon icon1;
  final void Function()? sciButtonHandler;
  final Function printLatestValue;
  final void Function(String text)? printText;
  final TextEditingController myController;
  final TextEditingController myController2;

  //var myController = TextEditingController();
  final Function showUnit2;

  DisplayScreen(
      {required this.displayNum,
      required this.displayNum2,
      required this.displayResult,
      required this.hideUnits,
      required this.searchList,
      required this.icon1,
      required this.sciButtonHandler,
      required this.printLatestValue,
      required this.printText,
      required this.myController,
      required this.showUnit2,
      required this.myController2});

  @override
  DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  //int iconNumber = 0;
  Icon icon2 = Icon(
    Icons.chevron_left,
    color: Colors.white,
  );
  bool displayResultVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height * 0.35,
        //backgroundColor: Colors.yellow,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 14,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: unitsVisibility,
                          child: Expanded(
                              flex: 12,
                              child: Text(
                                widget.displayNum2,
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 20.0),
                              )),
                        ),
                        Visibility(
                          visible: unitsVisibility,
                          child: Expanded(
                              flex: 3,
                              child: TextField(
                                readOnly: true,
                                controller: widget.myController2,
                                onTap: () {
                                  widget.showUnit2();
                                  context
                                      .read<ListviewVisibility>()
                                      .showListView2();
                                  context
                                      .read<ListviewVisibility>()
                                      .hidelistview();
                                },

                                //onChanged: widget.searchList,
                                //onChanged: printLatestValue,

                                //onChanged: widget.printText,
                                //keyboardType:
                                //keyboardType:
                                //onTap: widget.unitshandler,
                                decoration: InputDecoration(hintText: 'Unit2'),
                              )),
                        ),
                        Visibility(
                            visible: unitsVisibility,
                            child: Expanded(
                                flex: 1, child: Icon(Icons.arrow_downward)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 12,
                            child: Text(
                              widget.displayNum,
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 35.0),
                            )),
                        Visibility(
                          visible: unitsVisibility,
                          child: Expanded(
                              flex: 3,
                              child: TextField(
                                // keyboardType: ,
                                //inputFormatters: [
                                //FilteringTextInputFormatter.allow(
                                // RegExp("[a-zA-z]"))
                                //],
                                controller: widget.myController,
                                onTap: () {
                                  context
                                      .read<ListviewVisibility>()
                                      .showListView();
                                  context
                                      .read<ListviewVisibility>()
                                      .hidelistview2();
                                },

                                //onChanged: widget.searchList,
                                //onChanged: printLatestValue,

                                onChanged: widget.printText,
                                //keyboardType:
                                //keyboardType:
                                //onTap: widget.unitshandler,
                                decoration: InputDecoration(hintText: 'Unit1'),
                              )),
                        ),
                        Visibility(
                            visible: unitsVisibility,
                            child: Expanded(flex: 1, child: Icon(Icons.search)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Visibility(
                          visible: displayResultVisibility,
                          child: Expanded(
                              child: Text(
                            widget.displayResult,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: unitDisplay,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.05,
                    // alignment: Alignment.topRight,
                    color: Colors.blueAccent,
                    child: Center(
                      child: icon2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: widget.sciButtonHandler,
            child: Container(
                child: Center(child: widget.icon1),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Colors.blueAccent),
          ),
          //alignment: Alignment.topRight,
        ]);
  }

  bool unitsVisibility = false;
  unitDisplay() {
    //print(icon2 ==
    //Icon(
    // Icons.chevron_left,
    //color: Colors.white,
    //));
    setState(() {
      //unitsVisibility = !unitsVisibility;

      if (unitsVisibility == false) {
        unitsVisibility = true;
        displayResultVisibility = false;
        icon2 = Icon(
          Icons.chevron_right,
          color: Colors.white,
        );
        //iconNumber = 1;
      } else {
        icon2 = Icon(Icons.chevron_left, color: Colors.white);
        //iconNumber = 0;
        unitsVisibility = false;
        displayResultVisibility = true;
      }
      // CalculatorState.listViewVisibility = !CalculatorState.listViewVisibility;
    });
  }
}
