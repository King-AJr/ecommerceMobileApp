
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

Widget buildInfoCard(BuildContext context, title) {
  final darkMode = MyHelperFunctions.isDarkMode(context);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.allRoundPadding),
    child: Card(
      elevation: 0.3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      color: darkMode ? MyColors.colorDark : Colors.white,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: const Icon(Icons.navigate_next),
      ),
    ),
  );
}