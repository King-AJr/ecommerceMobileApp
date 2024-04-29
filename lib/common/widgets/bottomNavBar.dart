import 'package:ecommerce_app/features/home/screens/main_page.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());
    final darkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            elevation: 0.0,
            selectedIndex: navController.selectedIndex.value,
            backgroundColor: darkMode ? Colors.black : MyColors.colorLight,
            indicatorColor: darkMode
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.5),
            onDestinationSelected: (index) =>
                navController.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_bag_outlined), label: 'Bag'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'Favorites'),
              NavigationDestination(
                  icon: Icon(Icons.person_2_outlined), label: 'Profile')
            ],
          ),
        ),
        body: Obx(
            () => navController.screens[navController.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    MainPage(),
    Container(
      color: Colors.blue,
    ),
    Container(color: Colors.green),
    Container(
      color: Colors.blue,
    ),
    Container(color: Colors.yellow),
  ];
}
