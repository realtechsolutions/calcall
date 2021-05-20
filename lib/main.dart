import 'package:flutter/material.dart';
import './ButtonPad.dart';
//import 'unitsList.dart';
import 'DisplayScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcall",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: [DisplayScreen(), ButtonPad()],
        ),
      ),
    );
  }
}

/*Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Colors.yellow,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('value'),
                      Text('value'),
                      Text('value'),
                      Text('data'),
                      Text('data')
                    ],
                  ),
                  alignment: Alignment.topRight,
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: Colors.green,
                ),
                Visibility(
                  visible: true,
                  child: Container(
                    child: Column(
                      children: [
                        Text('value'),
                        Text('value'),
                        Text('value'),
                        Text('data'),
                        Text('data')
                      ],
                    ),
                    alignment: Alignment.topRight,
                    height: MediaQuery.of(context).size.height * 0.35,
                    color: Colors.blueGrey,
                  ),
                ),
                Container(
                  child: Center(
                    child: Icon(Icons.chevron_left),
                  ),
                  alignment: Alignment.topRight,
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: Colors.lime,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: (ButtonPad()),
          )
        ],
      ),
    ));
  }
}
*/
