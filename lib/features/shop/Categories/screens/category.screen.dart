import 'package:ecommerce_app/common/widgets/category_shimmer.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/shop/Categories/controllers/categories.controllers.dart';
import 'package:ecommerce_app/features/shop/Categories/screens/category_items.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine dark mode outside of build method
    final darkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: MyAppBar(
        context,
        "Categories",
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
          CategoryList(), // No need to wrap with const since it's a StatelessWidget
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);
    final CategoryController controller = Get.put(CategoryController());

    return Obx(
      () {
        if (controller.isLoading.value) {
          return const CategoryShimmer();
        }

        if (controller.parentCategories.isEmpty) {
          return Center(
            child: Text(
              'No data found',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Colors.white),
            ),
          );
        }

        return Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: controller.parentCategories.length,
            itemBuilder: (context, index) {
              final category = controller.parentCategories[index];
              return CategoryItem(name: category.name);
            },
          ),
        );
      },
    );
  }
}
