import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AnimationLoaderWidget extends StatelessWidget {
  final String text;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const AnimationLoaderWidget({
    Key? key,
    required this.text,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitFadingCircle(
            color: MyColors.primary, // Customize spinner color
            size: MediaQuery.of(context).size.width *
                0.6, // Customize spinner size
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          if (showAction)
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(
                  backgroundColor: MyColors.colorDark,
                ),
                child: Text(
                  actionText!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: MyColors.colorLight),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
