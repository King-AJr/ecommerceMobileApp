import "package:ecommerce_app/common/widgets/myAppBar.dart";
import "package:ecommerce_app/common/widgets/socialMediaButtons.dart";
import "package:ecommerce_app/features/authentication/screens/login/login_form.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(context, "Login"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.allRoundPadding),
            child: Column(
              children: [
                const LoginForm(),
                const SizedBox(
                  height: 190,
                ),
                SocialSignUpWidget(
                  signUpText: "Or sign up with social account",
                  onGooglePressed: () {},
                  onFacebookPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
