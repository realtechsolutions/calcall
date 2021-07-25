//import 'package:calcall/Calculator.dart';
import 'package:calcall/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayScreen extends StatefulWidget {
  final String displayNum;
  final String displayNum2;
  //final String displayNum3;
  //final String displayNum4;
  final String displayResult;
  final Function hideUnits;
  //final Function searchList;
  final Icon icon1;
  final void Function()? sciButtonHandler;
  // final Function printLatestValue;
  final void Function(String text)? printText;
  final TextEditingController myController;
  final TextEditingController myController2;

  final Function showUnit2;

  DisplayScreen(
      {required this.displayNum,
      required this.displayNum2,
      // required this.displayNum3,
      // required this.displayNum4,
      required this.displayResult,
      required this.hideUnits,
      //required this.searchList,
      required this.icon1,
      required this.sciButtonHandler,
      //required this.printLatestValue,
      required this.printText,
      required this.myController,
      required this.showUnit2,
      required this.myController2});

  @override
  DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  //int iconNumber = 0;
  //Icon icon2 = Icon(
  //Icons.chevron_left,
  // color: Colors.white,
  //);
  // bool displayResultVisibility = true;

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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //Total display
                    Container(
                      margin: EdgeInsets.only(bottom: 0),
                      color: Colors.grey[100],
                      child: Consumer<AppState>(
                        builder: (context, total, child) => Visibility(
                          visible: total.cgstVisibility,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  flex: 8,
                                  child: Text(
                                    total.displayNum4,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25.0),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: TextField(
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                    readOnly: true,
                                    controller: total.total,
                                    onTap: () {},
                                    decoration: InputDecoration(
                                        //hintText: 'CGST/IGST',
                                        border: InputBorder.none),
                                  )),
                              Expanded(
                                  flex: 1, child: Icon(Icons.book_outlined))

                              //Expanded(flex: 1, child: Icon(Icons.arrow_downward))
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Tax display

                    //cgst igst display
                    Consumer<AppState>(
                      builder: (context, cgs, child) => Visibility(
                        visible: cgs.cgstVisibility,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                flex: 8,
                                child: Text(
                                  cgs.displayNum3,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25.0),
                                )),
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.end,
                                  textAlignVertical: TextAlignVertical.center,
                                  readOnly: true,
                                  controller: cgs.cgst,
                                  onTap: () {},
                                  decoration: InputDecoration(
                                      //hintText: 'CGST/IGST',
                                      border: InputBorder.none),
                                )),
                            Expanded(flex: 1, child: Icon(Icons.book_outlined))

                            //Expanded(flex: 1, child: Icon(Icons.arrow_downward))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[100],
                      child: Consumer<AppState>(
                        //displayNum2
                        builder: (context, unitrow, child) => Visibility(
                          visible: unitrow.unit2Visibility,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  flex: 8,
                                  child: Text(
                                    widget.displayNum2,
                                    maxLines: 1,
                                    textAlign: unitrow.noAlignment,
                                    style: TextStyle(fontSize: 25.0),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: TextField(
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                    readOnly: true,
                                    controller: widget.myController2,
                                    onTap: () {
                                      widget.showUnit2();
                                      context.read<AppState>().showListView2();
                                      context.read<AppState>().hidelistview();
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Unit2',
                                        border: InputBorder.none),
                                  )),
                              Expanded(
                                  flex: 1, child: Icon(Icons.arrow_downward))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Consumer<AppState>(
                      builder: (context, unit1row, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Text(
                              widget.displayNum,
                              maxLines: 1,
                              textAlign: unit1row.noAlignment,
                              style: TextStyle(
                                fontSize: unit1row.fsDisplayNum,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Consumer<AppState>(
                            builder: (context, unit1, child) => Visibility(
                              visible: unit1.unit1Visibility,
                              child: Expanded(
                                  flex: 4,
                                  child: TextField(
                                    // keyboardType: ,
                                    //inputFormatters: [
                                    //FilteringTextInputFormatter.allow(
                                    // RegExp("[a-zA-z]"))
                                    //]

                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                    controller: widget.myController,
                                    onTap: () {
                                      context.read<AppState>().showListView();
                                      context.read<AppState>().hidelistview2();
                                    },

                                    onChanged: widget.printText,

                                    decoration: InputDecoration(
                                        hintText: 'Unit1',
                                        border: InputBorder.none),
                                    style: TextStyle(fontSize: 19),
                                  )),
                            ),
                          ),
                          Consumer<AppState>(
                            builder: (context, searchicon, child) => Visibility(
                                visible: searchicon.unit1Visibility,
                                child: Expanded(
                                    flex: 1, child: Icon(Icons.search))),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                        visible: true,
                        child: SizedBox(
                          height: 20,
                        )),
                    Consumer<AppState>(
                      builder: (context, displayresult, child) => Visibility(
                        visible: displayresult.displayResultVisibility,
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Text(
                              widget.displayResult,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black54),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Consumer<AppState>(
                      builder: (context, sizebox, child) => SizedBox(
                        height: sizebox.sizeboxheight,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Consumer<AppState>(
                  builder: (context, inkwell, child) => InkWell(
                    onTap: inkwell.unitDisplay,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.05,
                      // alignment: Alignment.topRight,
                      color: Colors.blueAccent,
                      child: Center(
                        child: inkwell.icon2,
                      ),
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

  //bool unit2Visibility = false;
  // bool unitsVisibility = false;
}
