import 'package:ecommerce_app/common/widgets/customElevatedButton.dart';
import 'package:ecommerce_app/common/widgets/customTextButton.dart';
import 'package:ecommerce_app/features/shop/Catalog/screens/gridView/grid_view_catalog.dart';
import 'package:ecommerce_app/features/shop/Catalog/screens/listView/List_view_catalog.dart';
import 'package:ecommerce_app/features/shop/filter/screens/filters.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar CatalogAppBar(bool listView) {
  return AppBar(
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(150.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text(
              "Women's tops",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      label: 'T-Shirts',
                      onPressed: () {
                        // Handle button press for T-Shirts
                      },
                    ),
                    CustomElevatedButton(
                      label: 'Crop tops',
                      onPressed: () {
                        // Handle button press for Crop tops
                      },
                    ),
                    CustomElevatedButton(
                      label: 'Sleeveless',
                      onPressed: () {
                        // Handle button press for Sleeveless
                      },
                    ),
                    CustomElevatedButton(
                      label: 'Skirts',
                      onPressed: () {
                        // Handle button press for Skirts
                      },
                    ),
                  ],
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                  icon: Icons.filter_list_outlined,
                  label: "Filters",
                  onPressed: () => Get.to(const FilterScreen())),
              const CustomTextButton(
                icon: Icons.arrow_drop_up_rounded,
                label: "Prices lowest to highest",
              ),
              IconButton(
                onPressed: () {
                  listView
                      ? Get.to(const GridViewCatalogScreen())
                      : Get.to(const CatalogListScreen());
                  listView = !listView;
                },
                icon: listView
                    ? const Icon(Icons.view_module)
                    : const Icon(Icons.view_list),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
