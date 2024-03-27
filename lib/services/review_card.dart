import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final String reviewDate;
  final double starRating;
  final String reviewText;
  final String imageUrl;

  const ReviewCard({
    Key? key,
    required this.reviewerName,
    required this.reviewDate,
    required this.starRating,
    required this.reviewText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 0.6,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reviewerName,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < starRating
                              ? Icons.star
                              : Icons.star_border_rounded,
                          color: index < starRating
                              ? const Color(0xFFFFBA49)
                              : const Color(0XFF9B9B9B),
                          size: 18,
                        );
                      }),
                    ),
                    Text(
                      reviewDate,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  reviewText,
                  style: const TextStyle(
                      fontSize: 14.0, fontFamily: "Metropolis-regular"),
                ),
                // Add any additional content here
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 2,
          child: CircleAvatar(
            backgroundImage: AssetImage(imageUrl),
            radius: 20.0,
          ),
        )
      ],
    );
  }
}
