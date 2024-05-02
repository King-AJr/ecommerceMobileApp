

import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

Widget buildDeliveryMethod(
      BuildContext context, bool theme, String imagePath, String duration) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: SizedBox(
        height: 80,
        width: 110,
        child: Card(
          elevation: 0.1,
          color: theme ? MyColors.colorDark : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                duration,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: MyColors.secondary),
              ),
            ],
          ),
        ),
      ),
    );
  }

