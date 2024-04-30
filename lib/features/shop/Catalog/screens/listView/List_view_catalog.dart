import 'package:ecommerce_app/features/shop/Catalog/screens/listView/catalog_card.dart';
import 'package:ecommerce_app/common/widgets/catalog_appbar.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class CatalogListScreen extends StatelessWidget {
  const CatalogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CatalogAppBar(true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.allRoundPadding),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: const [
              CatalogCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 3,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              CatalogCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 4,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              CatalogCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 3,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              CatalogCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 4,
                imageUrl: 'assets/images/cat_image2.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
