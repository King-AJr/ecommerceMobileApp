import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/product_card.dart';
import 'package:ecommerce_app/common/widgets/subcategories_appbar.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridViewFavoritesScreen extends StatelessWidget {
  const GridViewFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSubCategories(false, true, "Favorites"),
      body: SingleChildScrollView(
        child: GridLayout(
            itemCount: 6,
            mainAxisExtent: 310,
            itemBuilder: (_, index) {
              return const Padding(
                padding: EdgeInsets.only(
                    left: Sizes.allRoundPadding, top: Sizes.allRoundPadding),
                child: ProductCard(
                  image: 'assets/images/cat_image2.png',
                  title: 'Product 1',
                  price: 29.99,
                  rating: 4,
                  addToCart: false,
                ),
              );
            }),
      ),
    );
  }
}
