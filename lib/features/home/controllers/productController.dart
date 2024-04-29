import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<Map<String, dynamic>> salesProducts = ([
    {
      'image': 'assets/images/hoodie.jpeg',
      'title': 'Hoodie',
      'price': 29.99,
      'tagColor': MyColors.primary,
      'tagText': '-20%',
      'showTag': true,
    },
    {
      'image': 'assets/images/chelsea_booth.jpeg',
      'title': 'Chelsea boots',
      'price': 29.99,
      'tagColor': MyColors.primary,
      'tagText': '-20%',
      'showTag': true,
    },
    {
      'image': 'assets/images/vintage.jpeg',
      'title': 'Vintage Shirt',
      'price': 29.99,
      'tagColor': MyColors.primary,
      'tagText': '-20%',
      'showTag': true,
    },
    // Add more product data as needed
  ] as List<Map<String, dynamic>>)
      .obs;

  RxList<Map<String, dynamic>> newproducts = ([
    {
      'image': 'assets/images/pink_dress.jpeg',
      'title': 'Pink Dress',
      'price': 29.99,
      'tagColor': Colors.black,
      'tagText': 'NEW',
      'showTag': true,
    },
    {
      'image': 'assets/images/men_chinos.jpeg',
      'title': 'Men Chinos',
      'price': 29.99,
      'tagColor': Colors.black,
      'tagText': 'NEW',
      'showTag': true,
    },
    {
      'image': 'assets/images/wine_collar_polo.webp',
      'title': 'Collar Polo',
      'price': 29.99,
      'tagColor': Colors.black,
      'tagText': 'NEW',
      'showTag': true,
    },
    // Add more product data as needed
  ] as List<Map<String, dynamic>>)
      .obs;
}
