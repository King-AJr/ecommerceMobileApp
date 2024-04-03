import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final double width;
  final double aspectRatio;
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    this.width = 140,
    this.aspectRatio = 1.02,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
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
                  aspectRatio: 3.5 / 4, // 2:3 aspect ratio (two-thirds)
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                Icon(Icons.star, color: Color(0xFFFFBA49), size: 18),
                Text('(10)')
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      title,
                    ),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      '\$$price',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
