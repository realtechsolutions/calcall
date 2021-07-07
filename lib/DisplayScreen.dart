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
  final Function sciButtonHandler;
  final Function printLatestValue;
  final Function printText;
  final TextEditingController myController;
  final TextEditingController myController2;

  //var myController = TextEditingController();
  final Function showUnit2;

  DisplayScreen(
      {this.displayNum,
      this.displayNum2,
      this.displayResult,
      this.hideUnits,
      this.searchList,
      this.icon1,
      this.sciButtonHandler,
      this.printLatestValue,
      this.printText,
      this.myController,
      this.showUnit2,
      this.myController2});

  @override
  DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  int iconNumber = 0;
  Icon icon2 = Icon(
    Icons.chevron_left,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height * 0.35,
        //color: Colors.yellow,
        children: [
          Row(
            children: [
              Expanded(
                flex: 14,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 12,
                            child: Text(widget.displayNum2
                              ,
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 20.0),
                            )),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 12,
                            child: Text(
                              widget.displayNum,
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 30.0),
                            )),
                        Visibility(
                          visible: unitsVisibility,
                          child: Expanded(
                              flex: 3,
                              child: TextField(
                                // keyboardType: ,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-zA-z]"))
                                ],
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
                      children: [
                        Expanded(
                            child: Text(
                          widget.displayResult,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
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
                    height: 235,
                    width: 5,
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
    print(icon2 ==
        Icon(
          Icons.chevron_left,
          color: Colors.white,
        ));
    setState(() {
      if (iconNumber == 0) {
        icon2 = Icon(
          Icons.chevron_left,
          color: Colors.white,
        );
        iconNumber = 1;
      } else {
        icon2 = Icon(Icons.chevron_right, color: Colors.white);
        iconNumber = 0;
      }
      unitsVisibility = !unitsVisibility;
      // CalculatorState.listViewVisibility = !CalculatorState.listViewVisibility;
    });
  }
}
