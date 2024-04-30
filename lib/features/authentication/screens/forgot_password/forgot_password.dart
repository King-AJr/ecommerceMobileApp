import "package:ecommerce_app/common/widgets/myAppBars.dart";
import "package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password_form.dart";
import "package:flutter/material.dart";
import "package:ecommerce_app/util/constants/sizes.dart";

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyBottomAppBar(context, "Forgot Password"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.allRoundPadding),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                        "Please, enter your email address. You will recieve a link to create a new password via email",
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ForgotPasswordForm(),
                  const SizedBox(
                    height: 110,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
