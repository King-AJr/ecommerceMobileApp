import 'package:ecommerce_app/pages/forgot_password.dart';
import 'package:ecommerce_app/pages/login.dart';
import 'package:ecommerce_app/pages/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/sign_up.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/visual_search', routes: {
    '/': (context) => SignUpPage(),
    '/login': (context) => LoginPage(),
    '/forgot_password': (context) => ForgotPasswordPage(),
    '/visual_search': (context) => VisualSearch(),
  }));
}
