import 'package:flutter/material.dart';

class DropDownContainerProvider extends ChangeNotifier {
  bool isOpen = false;
  void changeContainerState() {
    isOpen = !isOpen;
    print(isOpen);
    notifyListeners();
  }
}
