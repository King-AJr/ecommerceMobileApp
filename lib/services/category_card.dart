import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  const CategoryCard({Key? key, required this.text, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Container(
        height: 130,
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
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  text, // Use the provided text variable here
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100, // Adjust width as needed
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl), // Use imageUrl here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CategoryItem extends StatelessWidget {
  final String name;

  const CategoryItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 244, 241, 241),
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(
          height: 1,
          width: double.infinity,
          child: Container(color: const Color.fromARGB(255, 236, 233, 233)),
        ),
      ],
    );
  }
}