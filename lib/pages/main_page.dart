import "package:flutter/material.dart";
import "package:ecommerce_app/services/product_card.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bannermain.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                        child: Text(
                          'Fashion sale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 230,
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[800],
                          ),
                          child: const Text(
                            'TAKE A PHOTO',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  Row(
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
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/categories');
                        },
                        child: const Text('View all',
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: "Metropolis-regular")),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Container(
                          //margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          height: 300,
                          width: 160,
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
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: "Metropolis-regular"),
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
                          width: 160,
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
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust border radius as needed
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: "Metropolis-regular"),
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
                          width: 160,
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
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                ])),
              )),
        ],
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
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main_page_two');
                },
                icon: const Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/categories');
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/my_bag');
                },
                icon: const Icon(Icons.shopping_bag_outlined)),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorite_list');
                },
                icon: const Icon(Icons.favorite_border_outlined)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person_2_outlined)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
