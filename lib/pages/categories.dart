import 'package:flutter/material.dart';
import "package:ecommerce_app/services/category_card.dart";

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 241, 241),
      appBar: AppBar(
        title: const Text("Categories"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Women',
                    style: TextStyle(color: Color(0xFF222222), fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Men',
                    style: TextStyle(color: Color(0xFF222222), fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Kids',
                    style: TextStyle(color: Color(0xFF222222), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFDB3022),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUMMER SALES",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Up to 50% off",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: CategoryCard(
                text: "New", imageUrl: 'assets/images/cat_image1.png'),
          ),
          const Expanded(
            flex: 1,
            child: CategoryCard(
                text: "Clothes", imageUrl: 'assets/images/cat_image2.png'),
          ),
          const Expanded(
            flex: 1,
            child: CategoryCard(
                text: "Shoes", imageUrl: 'assets/images/cat_image3.png'),
          ),
          const Expanded(
            flex: 1,
            child: CategoryCard(
                text: "Accessories", imageUrl: 'assets/images/cat_image4.png'),
          ),
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
