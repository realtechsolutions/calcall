//import 'package:calcall/DisplayScreen.dart';
import 'package:calcall/appState.dart';
import 'package:calcall/unitsList.dart';
import 'package:flutter/material.dart';
import 'unititem.dart';
//import 'DisplayScreen.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';

class UnitsList2 extends StatefulWidget {
  //Function searchList;
  final List<UnitItem> searchedListitem2;
  final Function addUnitToTextfield;

  final Function hideListview;
  UnitsList2(
      this.searchedListitem2, this.addUnitToTextfield, this.hideListview);
  //final int listviewIndex;

  @override
  _UnitsList2State createState() => _UnitsList2State();

  static List<UnitItem> listItem = UnitsList.listItem;

  //static List<UnitItem> searchedListitem = listItem;
}

class _UnitsList2State extends State<UnitsList2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: widget.searchedListitem2.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          dense: true,
          horizontalTitleGap: 1,
          // tileColor: Colors.black54,
          enabled: true,
          //selected: true,
          onTap: () {
            context.read<AppState>().hidelistview2();

            setState(() {
              CalculatorState.myController2.text =
                  widget.searchedListitem2[index].name;

              //print(widget.searchedListitem[index].name);
              //print(CalculatorState.myController.text);
              // widget.hideListView();
              //CalculatorState.listViewVisibility = false;
              //print(CalculatorState.myController2.text);
            });

            if (CalculatorState.myController2.text.contains('Tax')) {
              context.read<AppState>().gstListTileHandler();
            }
            

            // print(Calculator.listViewVisibility);
          },
          //() {
          // print(DisplayScreenState().myController.text);
          // },

          //DisplayScreenState().myController.text = 'huuuu';
          //print(DisplayScreenState().myController.text);

          //print('new ${DisplayScreenState().myController.text}');
          //},
          title: Text(
            '${widget.searchedListitem2[index].name}',
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          leading: widget.searchedListitem2[index].icon,
        );
      },
    );
  }
}
