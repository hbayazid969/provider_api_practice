import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }
}
