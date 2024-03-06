import 'package:ecommerce_app/services/catalog_card.dart';
import 'package:flutter/material.dart';

class CatalogOne extends StatelessWidget {
  const CatalogOne({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 241, 241),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Text(
                  "Women's tops",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF222222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'T-Shirts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF222222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'Crop tops',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF222222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'Sleeveless',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF222222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              'Skirts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list_outlined,
                          size: 25, color: Colors.black),
                      label: const Text("Filters",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w300))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_up_rounded,
                          size: 25, color: Colors.black),
                      label: const Text("Price: lowest to high",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w300))),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.format_list_bulleted_outlined))
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              const CatalogCard(
                  name: "Pullover",
                  brand: "Mango",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Positioned(
                  top: 95,
                  left: 325,
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
          Stack(
            children: [
              const CatalogCard(
                  name: "Pullover",
                  brand: "Mango",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Positioned(
                  top: 95,
                  left: 325,
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
          Stack(
            children: [
              const CatalogCard(
                  name: "Pullover",
                  brand: "Mango",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Positioned(
                  top: 95,
                  left: 325,
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
          Stack(
            children: [
              const CatalogCard(
                  name: "Pullover",
                  brand: "Mango",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Positioned(
                  top: 95,
                  left: 325,
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
          Stack(
            children: [
              const CatalogCard(
                  name: "Pullover",
                  brand: "Mango",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Positioned(
                  top: 95,
                  left: 325,
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
          )
        ],
      )),
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
