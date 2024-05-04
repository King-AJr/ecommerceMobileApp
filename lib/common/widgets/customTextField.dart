import "package:ecommerce_app/util/constants/colors.dart";
import "package:ecommerce_app/util/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final Widget child;

  const CustomTextField({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        elevation: 0.1,
        color: darkMode ? MyColors.colorDark : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(5.0), // Adjust the radius as needed
        ),
        child: Expanded(child: child),
      ),
    );
  }
}
