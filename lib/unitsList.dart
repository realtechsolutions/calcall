//import 'package:calcall/DisplayScreen.dart';
//import 'package:calcall/DisplayScreen.dart';
import 'package:calcall/helper.dart';
import 'package:calcall/appState.dart';
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
    UnitItem('cm', Icon(Icons.straighten), 'Length', cm),
    UnitItem('Feet', Icon(Icons.straighten), 'Length', feet),
    UnitItem('Inch', Icon(Icons.straighten), 'Length', inch),
    UnitItem('Yard', Icon(Icons.straighten), 'Length', yard),
    UnitItem('Miles', Icon(Icons.straighten), 'Length', mile),
    UnitItem('Kg', Icon(Icons.shopping_bag_outlined), 'Mass', kg),
    UnitItem('Ton', Icon(Icons.shopping_bag_outlined), 'Mass', ton),
    UnitItem('Gram', Icon(Icons.shopping_bag_outlined), 'Mass', gram),
    UnitItem('Quintal', Icon(Icons.shopping_bag_outlined), 'Mass', quintal),
    UnitItem('Miligram', Icon(Icons.shopping_bag_outlined), 'Mass', mg),
    UnitItem('Pound', Icon(Icons.shopping_bag_outlined), 'Mass', pound),
    UnitItem('m/sec\u00B2', Icon(Icons.trending_up), 'acceleration', msqsecond),
    UnitItem(
        'cm/sec\u00B2', Icon(Icons.trending_up), 'acceleration', cmsqsecond),
    UnitItem(
        'feet/sec\u00B2', Icon(Icons.trending_up), 'acceleration', ftsqsecond),
    UnitItem('inch/sec\u00B2', Icon(Icons.trending_up), 'acceleration',
        inchsqsecond),
    UnitItem('m\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', mcube),
    UnitItem('cm\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', cmcube),
    UnitItem('inch\u00B3', Icon(Icons.view_in_ar_outlined), 'volume', inchcube),
    UnitItem('liters', Icon(Icons.view_in_ar_outlined), 'volume', liters),
    UnitItem('gallon', Icon(Icons.view_in_ar_outlined), 'volume', gallon),
    UnitItem('kg/m\u00B3', Icon(Icons.opacity), 'density', kgmetercube),
    UnitItem('lb/ft\u00B3', Icon(Icons.opacity), 'density', lbftcube),
    UnitItem('lb/inch\u00B3', Icon(Icons.opacity), 'density', lbinchcube),
    UnitItem('g/cc', Icon(Icons.opacity), 'density', gpercc),
    UnitItem('m\u00B2', Icon(Icons.crop_din), 'area', metersqure),
    UnitItem('cm\u00B2', Icon(Icons.crop_din), 'area', cmsqure),
    UnitItem('inch\u00B2', Icon(Icons.crop_din), 'area', inchsqure),
    UnitItem('feet\u00B2', Icon(Icons.crop_din), 'area', feetsqure),
    UnitItem('Acre', Icon(Icons.crop_din), 'area', acre),
    UnitItem('Hectare', Icon(Icons.crop_din), 'area', hectare),
    UnitItem('Bigha', Icon(Icons.crop_din), 'area', bigha),
    UnitItem('Kanda', Icon(Icons.crop_din), 'area', kanda),
    UnitItem('m/sec', Icon(Icons.speed), 'speed', mpersec),
    UnitItem('feet/sec', Icon(Icons.speed), 'speed', feetpersec),
    UnitItem('km/hr', Icon(Icons.speed), 'speed', kmperhr),
    UnitItem('Newton', Icon(Icons.compress), 'force', newton),
    UnitItem('kgf', Icon(Icons.compress), 'force', kgf),
    UnitItem('dyne', Icon(Icons.compress), 'force', dyne),
    UnitItem('J(Joule)', Icon(Icons.autorenew), 'work', joule),
    UnitItem('kJ', Icon(Icons.autorenew), 'work', kJ),
    UnitItem('btu', Icon(Icons.autorenew), 'work', btu),
    UnitItem('kWh', Icon(Icons.autorenew), 'work', kwH),
    UnitItem('eV', Icon(Icons.autorenew), 'work', eV),
    UnitItem('HP', Icon(Icons.power_settings_new), 'power', hp),
    UnitItem('kW', Icon(Icons.power_settings_new), 'power', kW),
    UnitItem('W', Icon(Icons.power_settings_new), 'power', watt),
    UnitItem('psi', Icon(Icons.expand), 'pressure', psi),
    UnitItem('kPa', Icon(Icons.expand), 'pressure', kPa),
    UnitItem('atm', Icon(Icons.expand), 'pressure', atm),
    UnitItem('bar', Icon(Icons.expand), 'pressure', bar),
    UnitItem('mmHg', Icon(Icons.expand), 'pressure', mmHg),
    UnitItem('inchHg', Icon(Icons.expand), 'pressure', inchHg),
    UnitItem('mmH\u2082\O', Icon(Icons.expand), 'pressure', mmh20),
    UnitItem('kg/cm\u00B2', Icon(Icons.expand), 'pressure', kgcmsqure),
    UnitItem('\u2070\C', Icon(Icons.thermostat), 'temperature', centigrade),
    UnitItem('\u2070\F', Icon(Icons.thermostat), 'temperature', faranheight),
    UnitItem('\u2070\K', Icon(Icons.thermostat), 'temperature', kelvin),
    UnitItem('GST', Icon(Icons.account_balance), 'tax', gst),
    UnitItem('Tax 28%', Icon(Icons.account_balance), 'tax', gst),
    UnitItem('Tax 18%', Icon(Icons.account_balance), 'tax', gst),
    UnitItem('Tax 12%', Icon(Icons.account_balance), 'tax', gst),
    UnitItem('Tax 5%', Icon(Icons.account_balance), 'tax', gst),
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
          //tileColor: Colors.black54,
          enabled: true,
          //selected: true,
          onTap: () {
            context.read<AppState>().hidelistview();
            context.read<AppState>().hideGst();
            //context.read<AppState>().gstListTileHandler();

            setState(() {
              CalculatorState.myController.text =
                  widget.searchedListitem[index].name;
            });
          },

          title: Text(
            '${widget.searchedListitem[index].name}',
            style: TextStyle(color: Colors.black54, fontSize: 17),
          ),
          leading: widget.searchedListitem[index].icon,
        );
      },
    );
  }
}
