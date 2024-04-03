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
      body: Container(
        color: Colors.white,
        child: Column(
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
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Container(
                  // padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                  text: "Accessories",
                  imageUrl: 'assets/images/cat_image4.png'),
            ),
          ],
        ),
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
                  Navigator.pushNamed(context, '/category_two');
                },
                icon: const Icon(Icons.shopping_cart)),
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
                  Navigator.pushNamed(context, '/favorites_list');
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
