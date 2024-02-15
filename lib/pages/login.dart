import "package:ecommerce_app/services/auth_pages.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      _buildHeader(),
      SliverList(
          delegate: SliverChildListDelegate(
              [const AuthPages(pageType: AuthPageType.login)])),
    ]));
  }

  Widget _buildHeader() {
    return const SliverAppBar(
      title: Text(
        'Login',
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      floating: true,
      snap: true,
    );
  }
}
