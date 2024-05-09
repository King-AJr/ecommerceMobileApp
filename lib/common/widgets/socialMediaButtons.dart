import 'package:ecommerce_app/common/widgets/image_button.dart';
import 'package:ecommerce_app/features/authentication/controllers/login/login.controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class SocialSignUpWidget extends StatelessWidget {
  final String signUpText;
  final VoidCallback onGooglePressed;
  final VoidCallback onFacebookPressed;

  const SocialSignUpWidget({
    Key? key,
    required this.signUpText,
    required this.onGooglePressed,
    required this.onFacebookPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Column(
      children: [
        Text(signUpText, style: Theme.of(context).textTheme.labelMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.0,
              width: 90.0,
              child: ImageCardButton(
                imagePath: 'assets/images/google_logo.png',
                onPressed: () => controller.googleSignIn(),
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              height: 60.0,
              width: 90.0,
              child: ImageCardButton(
                imagePath: 'assets/images/facebook_logo.png',
                onPressed: onFacebookPressed,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
