import 'package:ecommerce_app/common/widgets/add_to_cart_icon.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class CatalogCard extends StatelessWidget {
  final String name;
  final String brand;
  final double rating;
  final int price;
  final String imageUrl;

  const CatalogCard({
    Key? key,
    required this.name,
    required this.brand,
    required this.rating,
    required this.price,
    required this.imageUrl,
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
      onTap: () {
        Navigator.pushNamed(context, "/product_info");
      },
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
                    Row(
                      children: List.generate(
                        5,
                        (index) {
                          IconData iconData;
                          Color starColor;

                          if (index < filledStars) {
                            // Full star
                            iconData = Icons.star;
                            starColor = const Color(0xFFFFBA49);
                          } else if (index == filledStars && hasHalfStar) {
                            // Half star
                            iconData = Icons.star_half;
                            starColor = const Color(0xFFFFBA49);
                          } else {
                            // Outline star
                            iconData = Icons.star_border;
                            starColor = Colors.grey;
                          }

                          return Icon(iconData, color: starColor, size: 18);
                        },
                      ),
                    ),
                    Text('$price\$',
                        style: theme.textTheme.labelLarge!
                            .copyWith(fontFamily: "Metropolis-medium")),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            top: 105,
            right: -10,
            child: AddToCartButton(),
          ),
        ]),
      ),
    );
  }
}
