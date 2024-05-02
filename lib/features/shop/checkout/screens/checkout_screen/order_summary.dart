
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

Widget buildOrderSummary(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order",
                style: theme.textTheme.displaySmall
                    ?.copyWith(color: MyColors.secondary),
              ),
              Text(
                "112\$",
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: theme.textTheme.displaySmall
                    ?.copyWith(color: MyColors.secondary),
              ),
              Text(
                "15\$",
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Summary",
                style: theme.textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "127\$",
                style: theme.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
