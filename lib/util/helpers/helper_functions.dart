import 'package:flutter/material.dart';

class MyHelperFunctions {
  MyHelperFunctions._();

  static isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

}


IconData getIconForDisplayMode(bool listView) {
    return listView == listView ? Icons.view_module : Icons.view_list;
  }