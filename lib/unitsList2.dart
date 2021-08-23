import 'package:calcall/appState.dart';
import 'package:calcall/unitsList.dart';
import 'package:flutter/material.dart';
import 'unititem.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UnitsList2 extends StatefulWidget {
  final List<UnitItem> searchedListitem2;
  final Function addUnitToTextfield;

  final Function hideListview;
  UnitsList2(
      this.searchedListitem2, this.addUnitToTextfield, this.hideListview);

  @override
  _UnitsList2State createState() => _UnitsList2State();

  static List<UnitItem> listItem = UnitsList.listItem;
}

class _UnitsList2State extends State<UnitsList2> {
  setUnit2() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('unit2', CalculatorState.myController2.text);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: widget.searchedListitem2.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          dense: true,
          horizontalTitleGap: 1,
          enabled: true,
          onTap: () {
            context.read<AppState>().hidelistview2();

            setState(() {
              CalculatorState.myController2.text =
                  widget.searchedListitem2[index].name;
              setUnit2();
            });

            if (CalculatorState.myController2.text.contains('Tax')) {
              context.read<AppState>().gstListTileHandler();
            }
          },
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
