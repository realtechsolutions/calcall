import 'package:flutter/material.dart';

class ListviewVisibility extends ChangeNotifier {
  bool listviewVisibility = false;
  bool listviewVisibility2 = false;

  hidelistview() {
    listviewVisibility = false;
    notifyListeners();
  }

  showListView() {
    listviewVisibility = true;
    notifyListeners();
  }

  hidelistview2() {
    listviewVisibility2 = false;
    notifyListeners();
  }

  showListView2() {
    listviewVisibility2 = true;
    notifyListeners();
  }

  notifyListeners();
}
