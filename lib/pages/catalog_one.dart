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
          preferredSize: const Size.fromHeight(150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Text(
                  "Women's tops",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                              elevation: 0.2,
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
                              elevation: 0.2,
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
                              elevation: 0.2,
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
                              elevation: 0.2,
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
                      onPressed: () {
                        Navigator.pushNamed(context, "/filter_page");
                      },
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
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
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
                    top: 85,
                    left: 310,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 141, 138, 138),
                          size: 17), // Icon widget
                      label: const Text(''), // Empty Text widget
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
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
                    top: 85,
                    left: 310,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 141, 138, 138),
                          size: 17), // Icon widget
                      label: const Text(''), // Empty Text widget
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
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
                    name: "Shirt",
                    brand: "Topshop",
                    price: 24,
                    imageUrl: 'assets/images/cat_image2.png'),
                Positioned(
                    top: 85,
                    left: 310,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 141, 138, 138),
                          size: 17), // Icon widget
                      label: const Text(''), // Empty Text widget
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
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
                    name: "T-Shirt",
                    brand: "LOST Ink",
                    price: 30,
                    imageUrl: 'assets/images/cat_image2.png'),
                Positioned(
                    top: 85,
                    left: 310,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 141, 138, 138),
                          size: 17), // Icon widget
                      label: const Text(''), // Empty Text widget
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
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
                    name: "Blouse",
                    brand: "Dorothy Perkins",
                    price: 74,
                    imageUrl: 'assets/images/cat_image2.png'),
                Positioned(
                    top: 85,
                    left: 310,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 141, 138, 138),
                          size: 17), // Icon widget
                      label: const Text(''), // Empty Text widget
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 1,
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
                  Navigator.pushNamed(context, '/main_page');
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
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/my_bag');
                },
                icon: const Icon(Icons.shopping_bag)),
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
