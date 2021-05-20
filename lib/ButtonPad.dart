import 'package:flutter/material.dart';
import './unitsList.dart';
import 'utils.dart';

class ButtonPad extends StatefulWidget {
  @override
  _ButtonPadState createState() => _ButtonPadState();
}

class _ButtonPadState extends State<ButtonPad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        //verticalDirection: VerticalDirection.down,
        children: [
          Container(
            child: Center(
              child: Icon(
                Icons.expand_more,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          //Expanded(child: UnitsList())
          Row(
            children: [
              Expanded(child: buton('Shift')),
              Expanded(child: buton('Rad')),
              Expanded(child: buton('Sin')),
              Expanded(child: buton('Cos')),
              Expanded(child: buton('Tan')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('^')),
              Expanded(child: buton('log')),
              Expanded(child: buton('ln')),
              Expanded(child: buton('(')),
              Expanded(child: buton(')')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('X \u00B2')),
              Expanded(child: buton('AC')),
              Expanded(child: buton('C')),
              Expanded(child: buton('%')),
              Expanded(child: buton(' \u00F7')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('Shift')),
              Expanded(child: buton('Rad')),
              Expanded(child: buton('Sin')),
              Expanded(child: buton('Cos')),
              Expanded(child: buton('Tan')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('Shift')),
              Expanded(child: buton('Rad')),
              Expanded(child: buton('Sin')),
              Expanded(child: buton('Cos')),
              Expanded(child: buton('Tan')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('Shift')),
              Expanded(child: buton('Rad')),
              Expanded(child: buton('Sin')),
              Expanded(child: buton('Cos')),
              Expanded(child: buton('Tan')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buton('Shift')),
              Expanded(child: buton('Rad')),
              Expanded(child: buton('Sin')),
              Expanded(child: buton('Cos')),
              Expanded(child: buton('Tan')),
            ],
          )
        ],
      ),
    );
  }
}
