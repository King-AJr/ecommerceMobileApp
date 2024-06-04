import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool isNetworkImage;
  final BoxFit? fit;

  const CircularImage({
    super.key,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = 24,
    this.isNetworkImage = false,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(Sizes.allRoundPadding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (MyHelperFunctions.isDarkMode(context)
                ? MyColors.colorDark
                : Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: isNetworkImage
            ? CachedNetworkImage(
                fit: fit,
                color: overlayColor,
                imageUrl: image,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Image(
                fit: fit,
                image: AssetImage(image) as ImageProvider,
                color: overlayColor,
              ),
      ),
    );
  }
}
