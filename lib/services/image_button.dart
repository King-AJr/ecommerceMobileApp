import 'package:flutter/material.dart';

class ImageCardButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const ImageCardButton({
    required this.imagePath,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        elevation: 0.1, // Adjust elevation for shadow effect
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust card border radius
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Adjust padding as needed
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain, // Adjust image fit
          ),
        ),
      ),
    );
  }
}
