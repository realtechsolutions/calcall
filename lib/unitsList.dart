import 'package:flutter/material.dart';

class UnitsList extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UnitsList> {
  @override
  Widget build(BuildContext context) {
    return getListView();
  }

  Widget getListView() {
    var listView = ListView(
      padding: EdgeInsets.only(left: 200),
      children: [
        ListTile(
          leading: Icon(Icons.straighten),
          title: Text('Meter'),
          onTap: () => print('object'),
        ),
        ListTile(
          leading: Icon(Icons.straighten),
          title: Text('Centimeter'),
          onTap: () => print('object'),
        )
      ],
    );
    return listView;
  }
}
