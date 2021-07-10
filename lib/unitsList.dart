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
    UnitItem('Centimeter', Icon(Icons.straighten), 'Length', centimeter),
    UnitItem('Feet', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Inch', Icon(Icons.straighten), 'Length', inch),
    UnitItem('Yard', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Miles', Icon(Icons.straighten), 'Length', meter),
    UnitItem('Kg', Icon(Icons.shopping_bag_outlined), 'Mass', kg),
    UnitItem('Ton', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Gram', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Quintal', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Miligram', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('Pound', Icon(Icons.shopping_bag_outlined), 'Mass', meter),
    UnitItem('m/sec\u00B2', Icon(Icons.trending_up), 'acceleration', meter),
    UnitItem('cm/sec\u00B2', Icon(Icons.trending_up), 'acceleration', meter),
    UnitItem('feet/sec\u00B2', Icon(Icons.trending_up), 'acceleration', meter),
    UnitItem('inch/sec\u00B2', Icon(Icons.trending_up), 'acceleration', meter),
    UnitItem('m\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', meter),
    UnitItem('cm\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', meter),
    UnitItem('inch\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', meter),
    UnitItem('liters', Icon(Icons.view_in_ar_outlined), 'volume', meter),
    UnitItem('gallon', Icon(Icons.view_in_ar_outlined), 'volume', meter),
    UnitItem('kg/m\u00B3', Icon(Icons.opacity), 'density', meter),
    UnitItem('lb/ft\u00B3', Icon(Icons.opacity), 'density', meter),
    UnitItem('lb/inch\u00B3', Icon(Icons.opacity), 'density', meter),
    UnitItem('g/cc', Icon(Icons.opacity), 'density', meter),
    UnitItem('m\u00B2', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('cm\u00B2', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('inch\u00B2', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('feet\u00B2', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('Acre', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('Hectare', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('Bigha', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('Kanda', Icon(Icons.view_comfy), 'area', meter),
    UnitItem('m/sec', Icon(Icons.speed), 'speed', meter),
    UnitItem('feett/sec', Icon(Icons.speed), 'speed', meter),
    UnitItem('km/hr', Icon(Icons.speed), 'speed', meter),
    UnitItem('Newton', Icon(Icons.compress), 'force', meter),
    UnitItem('kgf', Icon(Icons.compress), 'force', meter),
    UnitItem('dyne', Icon(Icons.compress), 'force', meter),
    UnitItem('J(Joule)', Icon(Icons.autorenew), 'work', meter),
    UnitItem('kJ', Icon(Icons.autorenew), 'work', meter),
    UnitItem('btu)', Icon(Icons.autorenew), 'work', meter),
    UnitItem('kwH', Icon(Icons.autorenew), 'work', meter),
    UnitItem('eV', Icon(Icons.autorenew), 'work', meter),
    UnitItem('HP', Icon(Icons.power_settings_new), 'power', meter),
    UnitItem('HP', Icon(Icons.power_settings_new), 'power', meter),
    UnitItem('kW', Icon(Icons.power_settings_new), 'power', meter),
    UnitItem('W', Icon(Icons.power_settings_new), 'power', meter),
    UnitItem('psi', Icon(Icons.expand), 'pressure', meter),
    UnitItem('kPa', Icon(Icons.expand), 'pressure', meter),
    UnitItem('atm', Icon(Icons.expand), 'pressure', meter),
    UnitItem('bar', Icon(Icons.expand), 'pressure', meter),
    UnitItem('mmHg', Icon(Icons.expand), 'pressure', meter),
    UnitItem('inchHg', Icon(Icons.expand), 'pressure', meter),
    UnitItem('mmH\u2082\O', Icon(Icons.expand), 'pressure', meter),
    UnitItem('kg/cm\u00B2', Icon(Icons.expand), 'pressure', meter),
    UnitItem('\u2070\C', Icon(Icons.thermostat), 'temperature', meter),
    UnitItem('\u2070\F', Icon(Icons.thermostat), 'temperature', meter),
    UnitItem('\u2070\K', Icon(Icons.thermostat), 'temperature', meter),
    UnitItem('GST 28%', Icon(Icons.account_balance), 'tax', meter),
    UnitItem('GST 18%', Icon(Icons.account_balance), 'tax', meter),
    UnitItem('GST 12%', Icon(Icons.account_balance), 'tax', meter),
    UnitItem('GST 5%', Icon(Icons.account_balance), 'tax', meter),
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
