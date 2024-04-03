import "package:flutter/material.dart";

class FavoriteCard extends StatelessWidget {
  final String name;
  final String brand;
  final int price;
  final String imageUrl;
  final String color;
  final int starRating;
  final String size;
  const FavoriteCard(
      {Key? key,
      required this.name,
      required this.brand,
      required this.price,
      required this.color,
      required this.size,
      required this.starRating,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFFFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(brand,
                            style: const TextStyle(
                                fontFamily: "Metropolis-thin", fontSize: 11)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel_outlined,
                                color: Colors.grey))
                      ],
                    ),
                    Text(name,
                        style: const TextStyle(
                            fontFamily: "Metropolis-semibold", fontSize: 16)),
                    Row(children: [
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
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text('$price\$',
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-semibold",
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
                          child: Row(
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
                                  style: TextStyle(
                                      fontFamily: "Metropolis-thin",
                                      fontSize: 12))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
