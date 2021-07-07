import 'package:calcall/listviewvisibility.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';
import 'unitsList.dart';
//import 'DisplayScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ListviewVisibility(), child: MyApp()));

  //UnitsList.listItem[1].calculate();
  //print('f');
  //CalculatorState().displayNum2 = 'fk';
 // print(CalculatorState().displayNum2);
 // print('rama is blue');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcall",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Calculator(),
      ),
    );
  }
}
