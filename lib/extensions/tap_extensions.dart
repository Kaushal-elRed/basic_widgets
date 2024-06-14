import 'package:flutter/material.dart';

extension TapExtension on Widget {
  InkWell onITap(void Function() onPress) {
    return InkWell(onTap: onPress, child: this);
  }

  ElevatedButton onETap(void Function() onPress) {
    return ElevatedButton(onPressed: onPress, child: this);
  }
}
