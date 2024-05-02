import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/add_to_cart_icon.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/product_card.dart';
import 'package:ecommerce_app/common/widgets/ratingDisplay.dart';
import 'package:ecommerce_app/features/shop/product_info/screen/build_info_card.dart';
import 'package:ecommerce_app/features/shop/product_info/screen/filterButton.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductInfoScreen extends StatelessWidget {
  final double rating;
  const ProductInfoScreen({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        context,
        "Short Dress",
        actions: [
          IconButton(
            onPressed: () {
              // Handle share action
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/images/short_black_gown.webp'),
                Image.asset('assets/images/imageshort-dress.png'),
              ],
              options: CarouselOptions(
                height: 400.0,
                // autoPlay: true,
                // autoPlayInterval: const Duration(seconds: 5),
                // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                // autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildFilterButton(context, 'Size', Icons.arrow_drop_down),
                buildFilterButton(context, 'Black', Icons.arrow_drop_down),
                const AddToCartButton(
                  addToCart: true,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'H&M',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Short black dress',
                        style: TextStyle(
                            fontSize: 13, color: Colors.black.withOpacity(0.5)),
                      ),
                      RatingOutput(rating: rating)
                    ],
                  ),
                  const Text(
                    '\$19.99',
                    style: TextStyle(
                        fontSize: 24, fontFamily: "Metropolis-semibold"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.allRoundPadding),
              child: Text(
                  "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                  style: Theme.of(context).textTheme.labelMedium),
            ),
            buildInfoCard(context, 'Shipping info'),
            buildInfoCard(context, 'Support'),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.allRoundPadding, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'You may also like this',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '12 items',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    image: 'assets/images/cat_image2.png',
                    title: 'Product 1',
                    price: 29.99,
                    rating: 4,
                    addToCart: true,
                    showTag: true,
                    tagColor: MyColors.primary,
                    tagText: '-20%',
                  ),
                  ProductCard(
                    image: 'assets/images/cat_image2.png',
                    title: 'Product 1',
                    price: 29.99,
                    rating: 4,
                    addToCart: true,
                    showTag: true,
                    tagColor: MyColors.primary,
                    tagText: '-20%',
                  ),
                  ProductCard(
                    image: 'assets/images/cat_image2.png',
                    title: 'Product 1',
                    price: 29.99,
                    rating: 4,
                    addToCart: true,
                    showTag: true,
                    tagColor: MyColors.primary,
                    tagText: '-20%',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 0.5,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          color: darkMode ? Colors.black : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/my_bag');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              child: const Text('ADD TO CART',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
