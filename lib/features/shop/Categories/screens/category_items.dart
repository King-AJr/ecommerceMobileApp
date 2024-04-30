import 'package:ecommerce_app/features/shop/Catalog/screens/listView/List_view_catalog.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  final String name;

  const CategoryItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const CatalogListScreen()),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: darkMode ? Colors.black : MyColors.colorLight,
              border: const Border(
                bottom: BorderSide(
                  color: MyColors.colorDark,
                  width: 0.3,
                ),
              ),
            ),
            height: 65,
            width: double.infinity,
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
