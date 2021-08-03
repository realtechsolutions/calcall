//import 'dart:js';

import 'package:calcall/appState.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Calculator.dart';
import 'package:provider/provider.dart';
//import 'helper.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'ad_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  // final initfuture = MobileAds.instance.initialize();
  //final adhelper = AdHelper(initfuture);
  //AdHelper.initialize();

  // AdHelper.myBanner.load();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AppState()),
    // Provider.value(
    //value: adhelper,
    // builder: (context, child) => MyApp(),
    //)
  ], child: MyApp()));
  //ChangeNotifierProvider(create: (context) => AppState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcall",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Calculator(),
      ),
    );
  }
}
