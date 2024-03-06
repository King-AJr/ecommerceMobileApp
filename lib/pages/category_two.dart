import 'package:flutter/material.dart';
import "package:ecommerce_app/services/category_card.dart";

class CategoryTwo extends StatelessWidget {
  const CategoryTwo({super.key});

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
            Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB3022),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: const Text('VIEW ALL ITEMS',
                        style: TextStyle(color: Colors.white)),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                  color: const Color.fromARGB(255, 244, 241, 241),
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Choose category",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16, color: Color(0xFF9B9B9B))))),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Tops"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Shirts & Blouses"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Cardigans & Sweaters"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Knitwear"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Blazers"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Outerwears"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Pants"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Jeans"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Shorts"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Skirts"),
            ),
            const Expanded(
              flex: 1,
              child: CategoryItem(name: "Dresses"),
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
