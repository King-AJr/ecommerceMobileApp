import 'package:flutter/material.dart';

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
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        width: 170,
                        height: 15,
                        child: LinearProgressIndicator(
                          value: 52 /
                              100.0, // Convert percentage to a value between 0.0 and 1.0
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDB3022)),
                        ),
                      ),
                      const Text("10")
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
                        width: 170,
                        height: 15,
                        child: LinearProgressIndicator(
                          value: 21 /
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
                        width: 170,
                        height: 15,
                        child: LinearProgressIndicator(
                          value: 17 /
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
                        width: 170,
                        height: 15,
                        child: LinearProgressIndicator(
                          value: 10 /
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
                        width: 170,
                        height: 15,
                        child: LinearProgressIndicator(
                          value: 10 /
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
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
