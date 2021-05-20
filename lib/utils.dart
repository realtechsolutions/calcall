import 'package:flutter/material.dart';

Widget buton(no) {
  onPressed() {
    print('no');
  }

  return TextButton(
      onPressed: onPressed,
      child: Text(
        no,
        style: TextStyle(fontSize: 25.0, height: 2.1),
      ));
}
