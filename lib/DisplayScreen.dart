import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  //var  a='0';
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  var displayNum = '0';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.yellow,
      child: Text(displayNum),
      alignment: Alignment.centerRight,
    );
  }
}
