import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/shop/filter/screens/build_size_button.dart';
import 'package:ecommerce_app/features/shop/filter/screens/my_range_slider.dart';
import 'package:ecommerce_app/features/shop/filter/screens/subject_title.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: MyAppBar(
        context,
        Text(
          "Filters",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    buildSizeButton(
                      label: "XS",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    buildSizeButton(
                      label: "S",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    buildSizeButton(
                      label: "M",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    buildSizeButton(
                      label: "L",
                      height: 43,
                      width: 43,
                      color: darkMode ? Colors.black : Colors.white,
                    ),
                    buildSizeButton(
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
              height: 120,
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
                  children: const [
                    buildSizeButton(
                      label: "All",
                      color: Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    buildSizeButton(
                      label: "Women",
                      color: Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    buildSizeButton(
                      label: "Men",
                      color: Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    buildSizeButton(
                      label: "Boys",
                      color: Colors.white,
                      height: 43,
                      width: 200,
                    ),
                    buildSizeButton(
                      label: "Girls",
                      color: Colors.white,
                      height: 43,
                      width: 200,
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

Widget _buildColorAvatar(Color color) {
  return CircleAvatar(
    backgroundColor: color,
  );
}
