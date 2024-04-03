import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.search),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('My Orders',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-bold", fontSize: 34)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF222222)),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Delivered",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300))),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Processed",
                                style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: "Metropolis-regular"))),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Cancelled",
                                style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: "Metropolis-regular"))),
                      ],
                    )
                  ],
                ),
              ))),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order № 1947034",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF222222),
                                      fontFamily: "Metropolis-semibold"),
                                ),
                                Text(
                                  "05-12-2019",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF9B9B9B),
                                      fontFamily: "Metropolis-regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: const Row(
                                  children: [
                                    Text(
                                      "Tracking number:    ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9B9B9B),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    Text(
                                      "IW3475453455",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Quantity: ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Total Amount:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                      Text(
                                        "112\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF222222),
                                            fontFamily: "Metropolis-regular"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text("Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300))),
                                  ),
                                  const Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF2AA952),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 4,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showUnselectedLabels:
            true, // Change this according to the current tab index
        onTap: (int index) {
          // Handle tab selection here
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
