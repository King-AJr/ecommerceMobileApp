import 'package:ecommerce_app/pages/finding_results.dart';
import 'package:ecommerce_app/pages/forgot_password.dart';
import 'package:ecommerce_app/pages/login.dart';
import 'package:ecommerce_app/pages/main_page.dart';
import 'package:ecommerce_app/pages/taking_a_photo.dart';
import 'package:ecommerce_app/pages/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/sign_up.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/main_page', routes: {
    '/': (context) => const SignUpPage(),
    '/login': (context) => const LoginPage(),
    '/forgot_password': (context) => const ForgotPasswordPage(),
    '/visual_search': (context) => const VisualSearch(),
    '/take_photo': (context) => const TakePhoto(),
    '/finding_results': (context) => const FindingResult(),
    '/main_page': (context) => const MainPage()
  }));
}
