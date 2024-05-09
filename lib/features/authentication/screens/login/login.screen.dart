import "package:ecommerce_app/common/widgets/myAppBars.dart";
import "package:ecommerce_app/common/widgets/socialMediaButtons.dart";
import "package:ecommerce_app/features/authentication/controllers/login/login.controller.dart";
import "package:ecommerce_app/features/authentication/screens/login/login_form.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());

    return Scaffold(
        appBar: MyBottomAppBar(context, "Login"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.allRoundPadding),
            child: Column(
              children: [
                LoginForm(
                  loginController: loginController,
                ),
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
