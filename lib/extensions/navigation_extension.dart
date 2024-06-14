import 'package:flutter/material.dart';

extension NavExtension on BuildContext {
  Future push(Widget child) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => child));
  }

  void pop() {
    return Navigator.pop(this);
  }
}
