import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.colorDark,
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.white,
              ), // Use button style from theme
        ),
      ),
    );
  }
}
