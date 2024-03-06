import "package:flutter/material.dart";
import "package:ecommerce_app/services/product_card.dart";

class MainPageTwo extends StatelessWidget {
  const MainPageTwo({super.key});
  //use build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          flex: 1,
          child: SizedBox(
              child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              'assets/images/street_clothes.png',
              fit: BoxFit.cover,
            ),
            const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                    child: Text(
                      'Street clothes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 1.0, // Adjust line height
                        //letterSpacing: -1.0, // Adjust letter spacing
                      ),
                    ),
                  ),
                ])
          ]))),
      Expanded(
        flex: 3,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(15, 20, 80, 10),
                margin: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Sale',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                      Text("Super summer sale",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5)))
                    ]),
              ),
              const Text('View all',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/hoodie.jpeg',
                        title: 'Hoodie',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB3022),
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              '-20%', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 160,
                          left: 105,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined,
                                color: Color.fromARGB(255, 141, 138, 138),
                                size: 17), // Icon widget
                            label: const Text(''), // Empty Text widget
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(
                                  12, 5, 5, 5), // Adjust padding as needed
                              shape: const CircleBorder(), // Circular shape
                              backgroundColor: Colors.white,
                              alignment: Alignment.center, // Button color
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/chelsea_booth.jpeg',
                        title: 'Chelsea boots',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB3022),
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              '-15%', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 160,
                          left: 105,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined,
                                color: Color.fromARGB(255, 141, 138, 138),
                                size: 17), // Icon widget
                            label: const Text(''), // Empty Text widget
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(
                                  12, 5, 5, 5), // Adjust padding as needed
                              shape: const CircleBorder(), // Circular shape
                              backgroundColor: Colors.white,
                              alignment: Alignment.center, // Button color
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/vintage.jpeg',
                        title: 'Vintage Shirt',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB3022),
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              '-20%', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 160,
                          left: 105,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined,
                                color: Color.fromARGB(255, 141, 138, 138),
                                size: 17), // Icon widget
                            label: const Text(''), // Empty Text widget
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(
                                  12, 5, 5, 5), // Adjust padding as needed
                              shape: const CircleBorder(), // Circular shape
                              backgroundColor: Colors.white,
                              alignment: Alignment.center, // Button color
                            ),
                          ))
                    ],
                  ),
                ),
              ])),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 30, 10),
                margin: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('New',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                      Text("You've never seen it before!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5)))
                    ]),
              ),
              const Text('View all',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/pink_dress.jpeg',
                        title: 'Evening dress',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              'NEW', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/men_chinos.jpeg',
                        title: 'Evening dress',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              'NEW', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  height: 300,
                  width: 160, // Adjust the height as needed
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const ProductCard(
                        image: 'assets/images/wine_collar_polo.webp',
                        title: 'Evening dress',
                        price: 29.99,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 60, // Adjust width as needed
                          height: 30, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                20), // Adjust border radius as needed
                          ),
                          child: const Center(
                            child: Text(
                              'NEW', // Your discount text
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight
                                      .bold // Adjust font size as needed
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ])),
      ),
    ]),
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 0,
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
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),);
  }
}
