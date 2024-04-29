import 'package:ecommerce_app/common/widgets/image_button.dart';
import "package:flutter/material.dart";

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
                onPressed: onGooglePressed,
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
