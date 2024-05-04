import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/socialMediaButtons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup_form.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: MyBottomAppBar(context, "Sign up"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.allRoundPadding),
          child: Column(
            children: [
              const SignUpForm(),
              const SizedBox(
                height: 50,
              ),
              SocialSignUpWidget(
                signUpText: "Or sign up with social account",
                onGooglePressed: () {},
                onFacebookPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
