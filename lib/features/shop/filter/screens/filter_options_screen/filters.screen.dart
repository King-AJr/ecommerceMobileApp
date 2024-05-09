import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/build_size_button.dart';
import 'package:ecommerce_app/features/shop/filter/screens/filter_options_screen/my_range_slider.dart';
import 'package:ecommerce_app/common/widgets/subject_title.dart';
import 'package:ecommerce_app/features/shop/filter/screens/select_brand_screen/select_brand_screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: MyAppBar(
        context,
          "Filters",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SubjectTitle(title: "Price range"),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                elevation: 0.1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                color: darkMode ? MyColors.colorDark : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.allRoundPadding),
                  child: MyRangeSlider(),
                ),
              ),
            ),
            const SubjectTitle(title: "Colors"),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                elevation: 0.1,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                color: darkMode ? MyColors.colorDark : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.allRoundPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildColorAvatar(Colors.black),
                      _buildColorAvatar(const Color(0xFFF6F6F6)),
                      _buildColorAvatar(const Color(0xFFB82222)),
                      _buildColorAvatar(const Color(0xFFBEA9A9)),
                      _buildColorAvatar(const Color(0xFFE2BB8D)),
                      _buildColorAvatar(const Color(0xFF151867)),
                    ],
                  ),
                ),
              ),
            ),
            const SubjectTitle(title: "Sizes"),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                elevation: 0.1,
                color: darkMode ? MyColors.colorDark : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  children: [
                    BuildSizeButton(
                      circular: false,
                      label: "XS",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "S",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "M",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "L",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "XL",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SubjectTitle(title: "Category"),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                elevation: 0.1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                color: darkMode ? MyColors.colorDark : Colors.white,
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 0.6,
                  // shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    BuildSizeButton(
                      circular: false,
                      label: "All",
                      color: darkMode ? Colors.black : Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "Women",
                      color: darkMode ? Colors.black : Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "Men",
                      color: darkMode ? Colors.black : Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "Boys",
                      color: darkMode ? Colors.black : Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    BuildSizeButton(
                      circular: false,
                      label: "Girls",
                      color: darkMode ? Colors.black : Colors.white,
                      height: 43,
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Brand',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Adidas, Jack & Jones, s.Oliver",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.labelSmall),
                      GestureDetector(
                        onTap: () => Get.to(() => SelectBrandScreen()),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Card(
                elevation: 0.1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                color: darkMode ? MyColors.colorDark : Colors.white,
                child: Row(
                  children: [
                    BuildSizeButton(
                        label: "Discard",
                        height: 43,
                        width: 150,
                        color: darkMode ? Colors.black : Colors.white,
                        circular: true),
                    BuildSizeButton(
                        label: "Apply",
                        height: 43,
                        width: 150,
                        color: darkMode ? Colors.black : Colors.white,
                        circular: true)
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

Widget _buildColorAvatar(Color color) {
  return CircleAvatar(
    backgroundColor: color,
  );
}
