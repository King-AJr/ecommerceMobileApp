import 'package:ecommerce_app/pages/forgot_password.dart';
import 'package:ecommerce_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/sign_up.dart';

void main() {
  runApp(MaterialApp(routes: {
    '/': (context) => SignUpPage(),
    '/login': (context) => LoginPage(),
    '/forgot_password': (context) => ForgotPasswordPage(),
  }));
}
