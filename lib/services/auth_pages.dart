import 'package:flutter/material.dart';
import 'package:ecommerce_app/services/image_button.dart';

enum AuthPageType { signup, login, forgotPassword }

class AuthPages extends StatefulWidget {
  final AuthPageType pageType;

  const AuthPages({Key? key, required this.pageType}) : super(key: key);

  @override
  _AuthPagesState createState() => _AuthPagesState();
}

class _AuthPagesState extends State<AuthPages> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40.0),
          if (widget.pageType == AuthPageType.forgotPassword)
            _forgotPasswordText(),
          _buildForm(),
          const SizedBox(height: 20.0),
          if (widget.pageType == AuthPageType.signup ||
              widget.pageType == AuthPageType.login)
            _buildLoginButton(),
          const SizedBox(height: 85.0),
          _buildSocialLogin(),
        ],
      ),
    );
  }

  Widget _forgotPasswordText() {
    return const SizedBox(
        width: double.infinity,
        child: Text(
          'Please enter your email Address. You will recieve a link to create a new password via email',
        ));
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.pageType == AuthPageType.signup)
            _buildTextFormField(
              labelText: 'Name',
              hintText: 'John Doe',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                } else if (!_isValidUsername(value)) {
                  return "User's name must be more than 3 characters\nand can not contain numbers";
                }
                return null;
              },
              onSaved: (value) => _name = value!,
            ),
          const SizedBox(height: 10.0),
          _buildTextFormField(
            labelText: 'Email',
            hintText: 'johndoe@email.com',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              } else if (!_isValidEmail(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onSaved: (value) => _email = value!,
          ),
          const SizedBox(height: 10.0),
          if (widget.pageType == AuthPageType.signup ||
              widget.pageType == AuthPageType.login)
            _buildTextFormField(
              labelText: 'Password',
              hintText: 'Password',
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                } else if (!_isValidPassword(value)) {
                  return 'Password must be atleast 8 characters long\n and must contain a capital letter, number \nand special character';
                }
                return null;
              },
              onSaved: (value) => _password = value!,
            ),
          const SizedBox(height: 20.0),
          _buildSignUpButton(),
        ],
      ),
    );
  }

  Widget _buildTextFormField({
    required String labelText,
    required String hintText,
    bool obscureText = false,
    required String? Function(String?) validator,
    required void Function(String?) onSaved,
  }) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }

  Widget _buildSignUpButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            // TODO: Handle signup logic
          }
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
        child: Text(
          _determineButtonText(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return TextButton(
      onPressed: () {
        if (widget.pageType == AuthPageType.signup) {
          Navigator.pushNamed(context, '/login');
        } else {
          Navigator.pushNamed(context, '/forgot_password');
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            widget.pageType == AuthPageType.signup
                ? "Already have an account?"
                : "Forgot your password?",
            style: const TextStyle(color: Colors.black),
          ),
          const Icon(Icons.arrow_right_alt),
        ],
      ),
    );
  }

  Widget _buildSocialLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.pageType == AuthPageType.signup
              ? 'Or Sign up with social account'
              : 'Or login with social account',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialImageButton('assets/images/google_logo.jpeg'),
            const SizedBox(width: 10),
            _buildSocialImageButton('assets/images/fb-logo.jpeg'),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialImageButton(String imagePath) {
    return SizedBox(
      height: 50.0,
      width: 50.0,
      child: ImageCardButton(
        imagePath: imagePath,
        onPressed: () {},
      ),
    );
  }

  String _determineButtonText() {
    String buttonText;

    if (widget.pageType == AuthPageType.signup) {
      buttonText = 'SIGN UP';
    } else if (widget.pageType == AuthPageType.login) {
      buttonText = 'LOGIN';
    } else {
      buttonText = 'SEND';
    }

    return buttonText;
  }

  bool _isValidEmail(String email) {
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  bool _isValidPassword(String password) {
    RegExp passwordRegExp = RegExp(
        r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+={}\[\]:;<>,.?\-]).{8,}$');
    return passwordRegExp.hasMatch(password);
  }

  bool _isValidUsername(String username) {
    RegExp usernameRegExp = RegExp(r'^[a-zA-Z]{3,23}$');
    return usernameRegExp.hasMatch(username);
  }
}
