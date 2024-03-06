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
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                color: Colors.white, // Assuming you want a background color
              ),
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                        ),
                      ),
                      const Text('Home'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart,
                            size: 40, color: Color(0xFFDB3022)),
                      ),
                      const Text('Shop'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag_outlined, size: 40),
                      ),
                      const Text('Bag'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_outlined,
                            size: 40),
                      ),
                      const Text('Favorites'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person_2_outlined, size: 40),
                      ),
                      const Text('Profile'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
