import 'package:calcall/Calculator.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';

List<UnitTypeCalculation> unitCalculation = [];
List<Object> calculation = [
  {'Length': '', 'calculate':length},
//unitCalculation.add(len);
//List<Object> fst = [];
//f//st.add(len);
//

  //{'mass': ''}
];
Object len = {
  'Length': '','calculate':length
};
//len.calculate = ()=> print('object');
class UnitTypeCalculation {
  String type;
  Function calculate;
  UnitTypeCalculation(this.type, this.calculate);
//final   z= CalculatorState.myController.text;
}

length() {
  //var grd ='b';
  switch (CalculatorState.myController.text) {
    case 'Meter':
      {
        switch (CalculatorState.myController2.text) {
          case 'Meter':
            {
              print('z');
            }
        }
      }
  }

//switch(CalculatorState.myController){case:'Meter'}
}

//UnitTypeCalculation('Length',Length);