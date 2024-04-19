import 'package:ecommerce_app/pages/login.dart';
import 'package:ecommerce_app/pages/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController extends StatelessWidget {
  const LoginController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainPage();
        } else {
          return LoginPage();
        }
      },
    ));
  }
}
