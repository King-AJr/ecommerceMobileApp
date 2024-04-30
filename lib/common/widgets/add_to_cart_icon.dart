import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';


class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return ElevatedButton.icon(
      onPressed: () {
        // Handle button press
      },
      icon: Icon(
        darkMode ? Icons.favorite : Icons.favorite_border_outlined,
        color: MyColors.colorDark,
        size: 20,
      ),
      label: const Text(''),
      style: ElevatedButton.styleFrom(
        elevation: 0.2,
        padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
