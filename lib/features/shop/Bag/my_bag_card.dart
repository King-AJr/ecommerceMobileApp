import "package:ecommerce_app/util/constants/colors.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";

class MyBagCard extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String color;
  final String size;
  const MyBagCard(
      {Key? key,
      required this.name,
      required this.price,
      required this.color,
      required this.size,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(Sizes.allRoundPadding),
      child: Container(
        height: 130, // Reduced height
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: darkMode ? MyColors.colorDark : Colors.white,
        ),
        child: Card(
          color: darkMode ? MyColors.colorDark : Colors.white,
          elevation: 0.1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                flex: 13,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: MyColors.colorDark),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.more_vert, color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Color: $color", // Combined label and value
                            style: const TextStyle(
                              fontFamily: "Metropolis-light",
                              fontSize: 12, // Reduced font size
                            ),
                          ),
                          const SizedBox(width: 20), // Adjusted spacing
                          Text(
                            "Size: $size", // Combined label and value
                            style: const TextStyle(
                              fontFamily: "Metropolis-light",
                              fontSize: 12, // Reduced font size
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.remove,
                                    color: MyColors.colorDark,
                                    size: 18), // Reduced icon size
                                label: const Text(''),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              const Text("1",
                                  style: TextStyle(
                                      fontSize: 12)), // Reduced font size
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.add,
                                    color: MyColors.colorDark,
                                    size: 18), // Reduced icon size
                                label: const Text(''),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.fromLTRB(
                                      8, 4, 4, 4), // Adjusted padding
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '$price\$',
                            style: Theme.of(context).textTheme.labelLarge,
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
      ),
    );
  }
}
