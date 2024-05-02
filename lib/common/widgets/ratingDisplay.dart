import 'package:ecommerce_app/features/shop/ratings_and_review/ratings_and_review.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingOutput extends StatelessWidget {
  final double rating;

  RatingOutput({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int filledStars = rating.floor();
    final bool hasHalfStar = rating - filledStars >= 0.5;

    return GestureDetector(
      onTap: () => Get.to(
        () => const RatingsAndReviewScreen(),
      ),
      child: Row(
        children: List.generate(
          5,
          (index) {
            IconData iconData;
            Color starColor;

            if (index < filledStars) {
              // Full star
              iconData = Icons.star;
              starColor = const Color(0xFFFFBA49);
            } else if (index == filledStars && hasHalfStar) {
              // Half star
              iconData = Icons.star_half;
              starColor = const Color(0xFFFFBA49);
            } else {
              // Outline star
              iconData = Icons.star_border;
              starColor = Colors.grey;
            }

            return Icon(iconData, color: starColor, size: 18);
          },
        ),
      ),
    );
  }
}
