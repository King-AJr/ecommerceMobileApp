import "package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password_form.dart";
import "package:flutter/material.dart";

import "package:ecommerce_app/common/widgets/socialMediaButtons.dart";
import "package:ecommerce_app/features/authentication/screens/login/login_form.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(Sizes.appBarHeight),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: AlignmentDirectional.bottomStart,
              child: Text("Forgot Password",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.allRoundPadding),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ForgotPasswordForm(),
                SizedBox(
                  height: 110,
                ),
              ],
            ),
          ),
        ));
  }
}
