import 'package:calcall/appState.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';
import 'helper.dart';

void main() {
  print(fact(9));
  runApp(
      ChangeNotifierProvider(create: (context) => AppState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcall",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Calculator(),
      ),
    );
  }
}
