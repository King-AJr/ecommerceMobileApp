import "package:flutter/material.dart";
import "package:ecommerce_app/services/product_card.dart";

class MainPageTwo extends StatelessWidget {
  const MainPageTwo({super.key});
  //use build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/street_clothes.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Street clothes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontFamily: "Metropolis-black",
                        height: 1.0, // Adjust line height
                        // letterSpacing: -1.0, // Adjust letter spacing
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Sale',
                              style: TextStyle(
                                fontSize: 34,
                                fontFamily: "Metropolis-bold",
                              )),
                          Text("Super summer sale",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Metropolis-regular",
                                  color: Color(0xFF9B9B9B)))
                        ]),
                    Text('View all',
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Metropolis-regular",
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                                top: 145,
                                left: 94,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color.fromARGB(255, 141, 138, 138),
                                      size: 17), // Icon widget
                                  label: const Text(''), // Empty Text widget
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(12, 5, 5,
                                        5), // Adjust padding as needed
                                    shape:
                                        const CircleBorder(), // Circular shape
                                    backgroundColor: Colors.white,
                                    alignment: Alignment.center, // Button color
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                                top: 145,
                                left: 94,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color.fromARGB(255, 141, 138, 138),
                                      size: 17), // Icon widget
                                  label: const Text(''), // Empty Text widget
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(12, 5, 5,
                                        5), // Adjust padding as needed
                                    shape:
                                        const CircleBorder(), // Circular shape
                                    backgroundColor: Colors.white,
                                    alignment: Alignment.center, // Button color
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                                top: 145,
                                left: 94,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color.fromARGB(255, 141, 138, 138),
                                      size: 17), // Icon widget
                                  label: const Text(''), // Empty Text widget
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(12, 5, 5,
                                        5), // Adjust padding as needed
                                    shape:
                                        const CircleBorder(), // Circular shape
                                    backgroundColor: Colors.white,
                                    alignment: Alignment.center, // Button color
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ]),
                  )),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('New',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontFamily: "Metropolis-bold",
                                )),
                            Text("You've never seen it before!",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "Metropolis-regular",
                                    color: Color(0xFF9B9B9B)))
                          ]),
                    ),
                    const Text('View all',
                        style: TextStyle(
                            fontSize: 11, fontFamily: "Metropolis-regular")),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
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
                    ]),
                  )),
            ])),
          ),
        ]),
      ),
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
      ),
    );
  }
}
