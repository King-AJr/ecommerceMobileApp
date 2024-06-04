import 'package:ecommerce_app/common/widgets/add_to_cart_icon.dart';
import 'package:ecommerce_app/common/widgets/ratingDisplay.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String brand;
  final String title;
  final double price;
  final double rating;
  final bool addToCart;
  final Color? tagColor;
  final String? tagText;
  final bool showTag;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    this.tagColor,
    this.tagText,
    this.showTag = false,
    required this.addToCart,
    this.brand = "AJ's collection",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    final int filledStars =
        rating.floor(); // Number of filled stars (whole number)
    final bool hasHalfStar = rating - filledStars >= 0.5; // Check for half star

    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      height: 325,
      width: 190,
      color: darkMode ? Colors.black : MyColors.colorLight,
      child: Container(
        decoration: BoxDecoration(
          color: darkMode ? MyColors.colorDark : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          color: Color(0x3600000F),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: AspectRatio(
                        aspectRatio: 3.5 / 4,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingOutput(rating: rating),
                        const SizedBox(height: 10),
                        Text(
                          brand,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: MyColors.secondary),
                        ),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '\$$price',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: MyColors.primary,
                                  fontFamily: "Metropolis-medium"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (showTag) // Conditionally show discount icon
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: tagColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      '$tagText', // Display discount percentage
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            Positioned(
              top: 160,
              left: 125,
              child: AddToCartButton(
                addToCart: addToCart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
