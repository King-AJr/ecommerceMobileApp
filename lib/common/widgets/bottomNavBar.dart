import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          Container(
            color: Colors.blue[200],
          ),
          Container(
            color: Colors.green[200],
          ),
          Container(
            color: Colors.red[200],
          ),
          Container(
            color: Colors.yellow[200],
          ),
        ],
        selectedIndex: 0,
        // NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        // NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Shop'),
        // NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'Bag'),
        // NavigationDestination(
        //     icon: Icon(Icons.favorite_border_outlined), label: 'Favorites'),
        // NavigationDestination(
        //     icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        // ],
      ),
    );
  }
}
