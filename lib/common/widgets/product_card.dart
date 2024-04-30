import 'package:ecommerce_app/common/widgets/add_to_cart_icon.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final double rating;
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    final int filledStars =
        rating.floor(); // Number of filled stars (whole number)
    final bool hasHalfStar = rating - filledStars >= 0.5; // Check for half star

    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      height: 310,
      width: 180,
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                          child: Text(title,
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                          child: Text(
                            '\$$price',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: MyColors.primary,
                                    fontFamily: "Metropolis-medium"),
                          ),
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
            const Positioned(
              top: 160,
              left: 113,
              child: AddToCartButton(),
            ),
          ],
        ),
      ),
    );
  }

  // ElevatedButton addToCartIcon() {
  //   return ElevatedButton.icon(
  //             onPressed: () {
  //               // Handle button press
  //             },
  //             icon: const Icon(
  //               Icons.favorite_border_outlined,
  //               color: Color.fromARGB(255, 141, 138, 138),
  //               size: 17,
  //             ),
  //             label: const Text(''),
  //             style: ElevatedButton.styleFrom(
  //               elevation: 0.2,
  //               padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
  //               shape: const CircleBorder(),
  //               backgroundColor: Colors.white,
  //             ),
  //           );
  // }
}
