import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const ProfileItem({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.secondary,
            width: 0.1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontFamily: "Metropolis-light",
                  color: MyColors.secondary,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: MyColors.secondary,
          ),
        ],
      ),
    );
  }
}
