import 'package:ecommerce_app/common/widgets/subcategories_appbar.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/product_card.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridViewCatalogScreen extends StatelessWidget {
  const GridViewCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSubCategories(false, false, "Women's tops"),
      body: SingleChildScrollView(
        child: GridLayout(
            itemCount: 6,
            mainAxisExtent: 345,
            itemBuilder: (_, index) {
              return const Padding(
                padding: EdgeInsets.only(left: 5, top: 5),
                child: ProductCard(
                  image: 'assets/images/cat_image2.png',
                  title: 'Product 1',
                  price: 29.99,
                  addToCart: true,
                  rating: 4,
                ),
              );
            }),
      ),
    );
  }
}
