import 'package:ecommerce_app/common/widgets/add_to_cart_icon.dart';
import 'package:ecommerce_app/common/widgets/ratingDisplay.dart';
import 'package:ecommerce_app/features/shop/product_info/screen/product_info.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalProductCard extends StatelessWidget {
  final String name;
  final String brand;
  final double rating;
  final int price;
  final bool addToCart;
  final String imageUrl;

  const HorizontalProductCard({
    Key? key,
    required this.name,
    required this.brand,
    required this.rating,
    required this.price,
    required this.imageUrl,
    required this.addToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    final theme = Theme.of(context);

    // Calculate the number of filled stars based on the rating (out of 5 stars)
    final int filledStars =
        rating.floor(); // Number of filled stars (whole number)
    final bool hasHalfStar = rating - filledStars >= 0.5; // Check for half star

    return GestureDetector(
      onTap: () => Get.to(
        () => const ProductInfoScreen(
          rating: 4.0,
        ),
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: darkMode ? MyColors.colorDark : Colors.white,
        ),
        child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          brand,
                          style: theme.textTheme.labelMedium!
                              .copyWith(color: MyColors.secondary),
                        ),
                      ],
                    ),
                    RatingOutput(rating: rating),
                    Text('$price\$',
                        style: theme.textTheme.labelLarge!
                            .copyWith(fontFamily: "Metropolis-medium")),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 105,
            right: -10,
            child: AddToCartButton(
              addToCart: addToCart,
            ),
          ),
        ]),
      ),
    );
  }
}
