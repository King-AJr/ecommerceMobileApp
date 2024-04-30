import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/shop/Categories/screens/category_items.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        context,
        Text(
          "Categories",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.allRoundPadding),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'VIEW ALL ITEMS',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ),
          Container(
            color: darkMode ? Colors.black : MyColors.colorLight,
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: const Text(
              "Choose category",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, color: Color(0xFF9B9B9B)),
            ),
          ),
          Expanded(
            child: Container(
              color: darkMode ? Colors.black : MyColors.colorLight,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: const [
                  CategoryItem(name: "Tops"),
                  CategoryItem(name: "Shirts & Blouses"),
                  CategoryItem(name: "Cardigans & Sweaters"),
                  CategoryItem(name: "Knitwear"),
                  CategoryItem(name: "Blazers"),
                  CategoryItem(name: "Outerwears"),
                  CategoryItem(name: "Pants"),
                  CategoryItem(name: "Jeans"),
                  CategoryItem(name: "Shorts"),
                  CategoryItem(name: "Skirts"),
                  CategoryItem(name: "Dresses"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
