//import 'dart:js';

import 'package:calcall/appState.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.blueAccent));

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AppState()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcall",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(resizeToAvoidBottomInset: false, body: Calculator()),
    );
  }
}
