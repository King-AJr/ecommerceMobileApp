import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
            child: const Text(
              'Sign up',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'John Doe',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value!,
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'johndoe@email.com',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (value) => _password = value!,
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value!,
                  ),
                  const SizedBox(height: 20.0),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Already have an account",
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_right_alt),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // TODO: Handle login logic
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[800]
                      ),
                      child: const Text('LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                  const SizedBox(height: 120.0),
                  const Text('Or login with social account',
                  textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(MdiIcons.google),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.facebook),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ])));
  }
}
