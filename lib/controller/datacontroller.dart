import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {


  String ? _value=""; 

  String? get user => _value;

  set user(String ? newValue) {
    _value = newValue;
    notifyListeners();
  }

}
