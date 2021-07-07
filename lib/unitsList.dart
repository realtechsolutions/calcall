//import 'package:calcall/DisplayScreen.dart';
import 'package:calcall/helper.dart';
import 'package:calcall/listviewvisibility.dart';
import 'package:flutter/material.dart';
import 'unititem.dart';
//import 'DisplayScreen.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';

class UnitsList extends StatefulWidget {
  //Function searchList;
  final List<UnitItem> searchedListitem;
  final Function addUnitToTextfield;
  final Function hideListview;
  UnitsList(this.searchedListitem, this.addUnitToTextfield, this.hideListview);
  //final int listviewIndex;

  @override
  _UnitsListState createState() => _UnitsListState();

  static List<UnitItem> listItem = [
    UnitItem(
        'Meter',
        Icon(
          Icons.straighten,
          //color: Colors.white,
        ),
        'Length',
        meter),
    UnitItem(
        'Centimeter', Icon(Icons.straighten), 'Length', () => print('object')),
    UnitItem('Feet', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Inch', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Yard', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Milies', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Kg', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Ton', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Gram', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Quintal', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Miligram', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Pound', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
  ];
  //static List<UnitItem> searchedListitem = listItem;
}

class _UnitsListState extends State<UnitsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: widget.searchedListitem.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          dense: true,
          horizontalTitleGap: 1,
          //tileColor: Colors.blueAccent,
          enabled: true,
          //selected: true,
          onTap: () {
            context.read<ListviewVisibility>().hidelistview();

            setState(() {
              CalculatorState.myController.text =
                  widget.searchedListitem[index].name;
              print(CalculatorState.myController.text);
            });

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
            '${widget.searchedListitem[index].name}',
            style: TextStyle(color: Colors.black54),
          ),
          leading: widget.searchedListitem[index].icon,
        );
      },
    );
  }
}
