import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

Widget buildFilterButton(BuildContext context, text, IconData icon) {
  final darkMode = Theme.of(context).brightness == Brightness.dark;
  return Container(
    height: 43,
    width: 120,
    margin: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: darkMode ? MyColors.colorDark : Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: const Color(0xFF9B9B9B), width: 0.5),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: "Metropolis-medium"),
          ),
          Icon(icon),
        ],
      ),
    ),
  );
}
