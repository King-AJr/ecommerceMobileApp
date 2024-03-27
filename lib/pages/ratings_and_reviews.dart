import 'package:flutter/material.dart';
import "package:ecommerce_app/services/review_card.dart";

class RatingsAndReview extends StatelessWidget {
  const RatingsAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Ratings&Reviews',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34.0,
                        fontFamily: "Metropolis-bold"),
                  ),
                ),
              ))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("4.3",
                      style: TextStyle(
                          fontSize: 44, fontFamily: "Metropolis-semibold")),
                  Text("23 ratings",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Metropolis-regular",
                          color: Color(0xFF4F4F4F)))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 80 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("9"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 35 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("5")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 30 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("4")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 20 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("2")
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Changed to spaceBetween
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFBA49), size: 18)
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 10 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("0")
                    ],
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("8 Reviews",
                    style: TextStyle(
                        fontSize: 24, fontFamily: "Metropolis-semibold")),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Text("With photo",
                        style: TextStyle(
                            fontSize: 14, fontFamily: "Metropolis-regular"))
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ReviewCard(
                      reviewerName: 'Helene Moore',
                      reviewDate: 'June 5, 2019',
                      starRating: 4,
                      imageUrl: "assets/images/smilingwoman.jpeg",
                      reviewText:
                          "This dress is absolutely gorgeous! The (insert detail you like, e.g., flutter sleeves, cinched waist) is really flattering and the (mention color or pattern) is perfect for the occasion. The material is soft and comfortable, but it is also (describe material, e.g., a bit on the thin side, prone to wrinkles).", // Assuming the rating is out of 5 and can have half-stars
                    ),
                    ReviewCard(
                      reviewerName: 'Helene Moore',
                      reviewDate: 'June 5, 2019',
                      starRating: 4,
                      imageUrl: "assets/images/smilingwoman.jpeg",
                      reviewText:
                          "This dress is absolutely gorgeous! The (insert detail you like, e.g., flutter sleeves, cinched waist) is really flattering and the (mention color or pattern) is perfect for the occasion. The material is soft and comfortable, but it is also (describe material, e.g., a bit on the thin side, prone to wrinkles).", // Assuming the rating is out of 5 and can have half-stars
                    ),
                    ReviewCard(
                      reviewerName: 'Helene Moore',
                      reviewDate: 'June 5, 2019',
                      starRating: 4,
                      imageUrl: "assets/images/smilingwoman.jpeg",
                      reviewText:
                          "This dress is absolutely gorgeous! The (insert detail you like, e.g., flutter sleeves, cinched waist) is really flattering and the (mention color or pattern) is perfect for the occasion. The material is soft and comfortable, but it is also (describe material, e.g., a bit on the thin side, prone to wrinkles).", // Assuming the rating is out of 5 and can have half-stars
                    )
                  ],
                )),
          )
        ]),
      ),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 30, 30),
          child: Container(
            height: 40,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFDB3022),
            ),
            child: TextButton.icon(
                onPressed: null,
                icon: const Icon(Icons.edit, color: Colors.white),
                label: const Text("Write a review",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Metropolis-regular"))),
          ),
        )
      ]),
    );
  }
}
