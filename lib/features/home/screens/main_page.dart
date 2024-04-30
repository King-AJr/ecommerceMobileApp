import 'package:ecommerce_app/common/widgets/product_card.dart';
import 'package:ecommerce_app/features/home/controllers/productController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({
    super.key,
  });

  final List<Map<String, dynamic>> newproducts = [
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
  ];

  Widget buildProductList(RxList<Map<String, dynamic>> products) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: products.map((product) {
            return ProductCard(
              image: product['image'],
              title: product['title'],
              price: product['price'],
              tagColor: product['tagColor'],
              tagText: product['tagText'],
              showTag: product['showTag'],
              rating: product['rating']
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ProductController productController = ProductController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.bottomStart,
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/street_clothes.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Street clothes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontFamily: 'Metropolis-black',
                    height: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sale',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Super summer sale',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
            Obx(() => buildProductList(productController.salesProducts)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'New',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "You've never seen it before!",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
            Obx(() => buildProductList(productController.newproducts)),
          ],
        ),
      ),
    );
  }
}
