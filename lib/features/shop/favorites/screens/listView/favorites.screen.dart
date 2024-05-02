import 'package:ecommerce_app/common/widgets/horizontal_product_card.dart';
import 'package:ecommerce_app/common/widgets/subcategories_appbar.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class ListViewFavoritesScreen extends StatelessWidget {
  const ListViewFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSubCategories(
        true,
        true,
        "Favorites",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.allRoundPadding),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HorizontalProductCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 3,
                addToCart: false,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              HorizontalProductCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 4,
                addToCart: false,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              HorizontalProductCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 3,
                addToCart: false,
                imageUrl: 'assets/images/cat_image2.png',
              ),
              SizedBox(
                height: 15,
              ),
              HorizontalProductCard(
                name: "Pullover",
                brand: "Mango",
                price: 54,
                rating: 4,
                addToCart: false,
                imageUrl: 'assets/images/cat_image2.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
