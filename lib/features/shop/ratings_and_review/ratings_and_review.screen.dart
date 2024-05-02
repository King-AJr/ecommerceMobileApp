import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/ratingDisplay.dart';
import 'package:ecommerce_app/features/shop/ratings_and_review/review_card.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class RatingsAndReviewScreen extends StatelessWidget {
  const RatingsAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBottomAppBar(
        context,
        "Ratings&Review",
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          Sizes.allRoundPadding,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 2 * MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRatingBar(4.3, 23),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        buildRatingRow(5, 80, 9),
                        buildRatingRow(4, 35, 5),
                        buildRatingRow(3, 30, 4),
                        buildRatingRow(2, 20, 2),
                        buildRatingRow(1, 10, 0),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "8 Reviews",
                        style: TextStyle(
                            fontSize: 24, fontFamily: "Metropolis-semibold"),
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Text(
                            "With photo",
                            style: TextStyle(
                                fontSize: 14, fontFamily: "Metropolis-regular"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Column(
                    children: List.generate(
                      4, // Number of reviews
                      (index) => const ReviewCard(
                        reviewerName: 'Helene Moore',
                        reviewDate: 'June 5, 2019',
                        starRating: 4,
                        imageUrl: "assets/images/smilingwoman.jpeg",
                        reviewText:
                            "This dress is absolutely gorgeous! The (insert detail you like, e.g., flutter sleeves, cinched waist) is really flattering and the (mention color or pattern) is perfect for the occasion. The material is soft and comfortable, but it is also (describe material, e.g., a bit on the thin side, prone to wrinkles).",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildRatingBar(double rating, int totalRatings) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rating.toString(),
            style: const TextStyle(
                fontSize: 44, fontFamily: "Metropolis-semibold"),
          ),
          Text(
            '$totalRatings ratings',
            style: const TextStyle(
                fontSize: 14,
                fontFamily: "Metropolis-regular",
                color: Color(0xFF4F4F4F)),
          ),
        ],
      ),
    ],
  );
}

Widget buildRatingRow(double stars, double percentage, int count) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      RatingOutput(rating: stars),
      const SizedBox(width: 10),
      SizedBox(
        width: 150,
        height: 10,
        child: LinearProgressIndicator(
          value: percentage / 100.0,
          backgroundColor: Colors.black,
          valueColor: const AlwaysStoppedAnimation<Color>(
            Color(
              0xFFDB3022,
            ),
          ),
        ),
      ),
      Text(
        count.toString(),
      ),
    ],
  );
}
