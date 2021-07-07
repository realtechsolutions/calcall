import 'package:flutter/material.dart';

bool sciButtonVisibility = false;
bool normalButtonVisibility = true;
double fs = 25.0;
double btnpad = 10.0;

Icon icon1 = Icon(Icons.expand_more);
Icon icon2 = Icon(Icons.expand_less);

Widget buton(no, isvisible, handler) {
  //onPressed() {
  //print('no');

  // DisplayScreenState.displayNum += no;
  //}

  return Visibility(
    visible: isvisible,
    child: Expanded(
      child: OutlinedButton(
        // padding: EdgeInsets.all(25.0),
        style: TextButton.styleFrom(
            padding: EdgeInsets.fromLTRB(btnpad, btnpad, btnpad, btnpad)),

        onPressed: handler,
        child: Text(no, style: TextStyle(fontSize: fs, color: Colors.black)),
      ),
    ),
  );
}
