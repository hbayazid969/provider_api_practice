import 'package:flutter/material.dart';

extension buildcontext on BuildContext {
  //height
  double get h => MediaQuery.of(this).size.height;

  //width
  double get w => MediaQuery.of(this).size.width;

  //routes
  Future push(Widget nextScreen) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => nextScreen));
  }
}
