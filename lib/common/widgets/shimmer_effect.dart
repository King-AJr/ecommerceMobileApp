import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  final double width, height, radius;
  final Color? color;

  const ShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.color});

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: darkMode ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: darkMode ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (darkMode ? MyColors.secondary : Colors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
