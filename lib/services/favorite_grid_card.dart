import 'package:flutter/material.dart';

class FavoriteGridCard extends StatelessWidget {
  final String image;
  final double price;
  final double width;
  final String brand;
  final String name;
  final String color;
  final String size;
  final int starRating;
  final double aspectRatio;
  const FavoriteGridCard({
    Key? key,
    required this.image,
    required this.price,
    required this.brand,
    required this.size,
    required this.color,
    required this.starRating,
    required this.name,
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  aspectRatio: 6.5 / 6, // 2:3 aspect ratio (two-thirds)
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < starRating
                          ? Icons.star
                          : Icons.star_border_rounded,
                      color: index < starRating
                          ? const Color(0xFFFFBA49)
                          : const Color(0XFF9B9B9B),
                      size: 18,
                    );
                  }),
                ),
                const Text('(10)',
                    style:
                        TextStyle(fontFamily: "Metropolis-thin", fontSize: 12))
              ],
            ),
            Text(brand,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: "Metropolis-thin", fontSize: 11)),
            Text(name,
                style: const TextStyle(
                    fontFamily: "Metropolis-semibold", fontSize: 16)),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(children: [
                Row(children: [
                  const Text("Color:",
                      style: TextStyle(
                        fontFamily: "Metropolis-thin",
                      )),
                  Text(color,
                      style: const TextStyle(
                        fontFamily: "Metropolis-light",
                      ))
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Row(children: [
                    const Text("Size:",
                        style: TextStyle(
                            fontFamily: "Metropolis-thin", fontSize: 11)),
                    Text(size,
                        style: const TextStyle(
                          fontSize: 11,
                          fontFamily: "Metropolis-light",
                        ))
                  ]),
                )
              ]),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('$price\$',
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Metropolis-semibold",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
