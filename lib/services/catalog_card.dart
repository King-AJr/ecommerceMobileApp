import "package:flutter/material.dart";

class CatalogCard extends StatelessWidget {
  final String name;
  final String brand;
  final int price;
  final String imageUrl;
  const CatalogCard(
      {Key? key,
      required this.name,
      required this.brand,
      required this.price,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFFFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100, // Adjust width as needed
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl), // Use imageUrl here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18)),
                      Text(brand,
                          style: const TextStyle(
                            fontWeight: FontWeight.w200,
                          )),
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
                      Text('$price\$')
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
