import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback? onPressed;
  const CustomTextButton(
      {super.key, this.icon, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(
        label,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
