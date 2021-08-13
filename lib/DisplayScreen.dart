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
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 25.0),
                              )),
                          Expanded(
                              flex: 5,
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                                textAlign: TextAlign.end,
                                textAlignVertical: TextAlignVertical.center,
                                readOnly: true,
                                controller: total.total,
                                onTap: () {},
                                decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.book_outlined,
                                      color: Colors.deepOrange,
                                    ),
                                    border: InputBorder.none),
                              )),
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
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 25.0),
                            )),
                        Expanded(
                            flex: 5,
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 18, color: Colors.deepOrange),
                              textAlign: TextAlign.end,
                              textAlignVertical: TextAlignVertical.center,
                              readOnly: true,
                              controller: cgs.cgst,
                              onTap: () {},
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.book_outlined,
                                    color: Colors.deepOrange,
                                  ),
                                  border: InputBorder.none),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[100],
                  child: Consumer<AppState>(
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
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 25.0),
                              )),
                          Expanded(
                              flex: 5,
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                                textAlign: TextAlign.end,
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
                                    suffixIcon: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.deepOrange,
                                    ),
                                    border: InputBorder.none),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Consumer<AppState>(
                    builder: (context, sizebox3, child) => SizedBox(
                          height: sizebox3.sizebox3height,
                        )),
                Consumer<AppState>(
                  builder: (context, unit1row, child) => Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          widget.displayNum,
                          maxLines: 1,
                          textAlign: TextAlign.end,
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
                              flex: 5,
                              child: TextField(
                                cursorColor: Colors.blueAccent,
                                cursorHeight: 24,
                                textAlign: TextAlign.end,
                                textAlignVertical: TextAlignVertical.center,
                                controller: widget.myController,
                                onTap: () {
                                  context.read<AppState>().showListView();
                                  context.read<AppState>().hidelistview2();
                                },
                                onChanged: widget.printText,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.deepOrange,
                                    ),
                                    hintText: 'Unit1',
                                    border: InputBorder.none),
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Consumer<AppState>(
                    builder: (context, sizebox2, child) => SizedBox(
                          height: sizebox2.sizebox2height,
                        )),
                Consumer<AppState>(
                  builder: (context, displayresult, child) => Visibility(
                    visible: displayresult.displayResultVisibility,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Text(
                          widget.displayResult,
                          textAlign: TextAlign.end,
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black54),
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
            // flex: 1,
            child: Consumer<AppState>(
              builder: (context, inkwell, child) => InkWell(
                onTap: inkwell.unitDisplay,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.05,
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
    ]);
  }
}
