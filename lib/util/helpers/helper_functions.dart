import 'package:flutter/material.dart';

class MyHelperFunctions {
  MyHelperFunctions._();

  static isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
