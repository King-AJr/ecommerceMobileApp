import 'package:ecommerce_app/services/my_bag_card.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.search),
            )
          ],
          title: const Text(
            'Order details',
            style: TextStyle(fontSize: 18, fontFamily: "Metropolis-semibold"),
          )),
      body: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.white,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                          Text(
                            "Delivered",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF2AA952),
                                fontFamily: "Metropolis-regular"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomStart,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      "3 items",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF222222),
                          fontFamily: "Metropolis-regular"),
                    ),
                  ),
                  const MyOrderCard(
                      name: "Pullover",
                      size: "L",
                      color: "Black",
                      price: 54,
                      unit: 1,
                      imageUrl: 'assets/images/cat_image2.png'),
                  const MyOrderCard(
                      name: "Pullover",
                      size: "L",
                      color: "Black",
                      price: 54,
                      unit: 1,
                      imageUrl: 'assets/images/cat_image2.png'),
                  const MyOrderCard(
                      name: "Pullover",
                      size: "L",
                      color: "Black",
                      unit: 1,
                      price: 54,
                      imageUrl: 'assets/images/cat_image2.png'),
                  Container(
                      alignment: AlignmentDirectional.bottomStart,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text("Order information")),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping Address",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9B9B9B),
                              fontFamily: "Metropolis-regular"),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "3 Newbridge Court ,Chino Hills,\nCA 91709, United States",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF222222),
                              fontFamily: "Metropolis-regular"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Payment method:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9B9B9B),
                              fontFamily: "Metropolis-regular"),
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            SizedBox(
                                height: 40,
                                width: 50,
                                child: Card(
                                    color: Colors.white,
                                    elevation: 0.2,
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Mastercard-logo.png'),
                                              fit: BoxFit.contain)),
                                    ))),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text(
                                "**** **** **** 3947",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF222222),
                                    fontFamily: "Metropolis-regular"),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery method:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9B9B9B),
                              fontFamily: "Metropolis-regular"),
                        ),
                        SizedBox(width: 30),
                        Text(
                          "FedEx, 3days, 15\$",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF222222),
                              fontFamily: "Metropolis-regular"),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9B9B9B),
                              fontFamily: "Metropolis-regular"),
                        ),
                        SizedBox(width: 80),
                        Text(
                          "10% person promo code",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF222222),
                              fontFamily: "Metropolis-regular"),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total amount:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9B9B9B),
                              fontFamily: "Metropolis-regular"),
                        ),
                        SizedBox(width: 50),
                        Text(
                          "133\$",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF222222),
                              fontFamily: "Metropolis-regular"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Reorder",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300))),
                        ),
                        SizedBox(
                          width: 170,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFDB3022),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            child: const Text('Leave Feedback',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: "Metropolis-regular")),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
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
