import 'package:ecommerce_app/common/widgets/build_size_button.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class SelectBrandScreen extends StatefulWidget {
  SelectBrandScreen({super.key});

  @override
  State<SelectBrandScreen> createState() => _SelectBrandScreenState();
}

class _SelectBrandScreenState extends State<SelectBrandScreen> {
  final List<Map<String, dynamic>> brands = [
    {'name': 'adidas', 'selected': false},
    {'name': 'adidas Originals', 'selected': true},
    {'name': 'Blend', 'selected': false},
    {'name': 'Boutique Moschino', 'selected': true},
    {'name': 'Champion', 'selected': false},
    {'name': 'Diesel', 'selected': true},
    {'name': 'Jack & Jones', 'selected': false},
    {'name': 'Naf Naf', 'selected': true},
    {'name': 'Red Valentino', 'selected': false},
    {'name': 's.oliver', 'selected': true},
  ];

  void _toggleBrandSelection(int index) {
    setState(() {
      brands[index]['selected'] = !brands[index]['selected'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: MyAppBar(
        context,
          "Brands",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(brands.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          brands[index]['name'] as String,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: brands[index]['selected']
                                    ? const Color(0xFFDB3022)
                                    : null,
                              ),
                        ),
                        Checkbox(
                          value: brands[index]['selected'] as bool,
                          onChanged: (bool? value) {
                            _toggleBrandSelection(
                                index); // Pass the current index
                          },
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 120,
        child: Card(
          elevation: 0.1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          color: darkMode ? MyColors.colorDark : Colors.white,
          child: Row(
            children: [
              buildSizeButton(
                  label: "Discard",
                  height: 43,
                  width: 150,
                  color: darkMode ? Colors.black : Colors.white,
                  circular: true),
              buildSizeButton(
                  label: "Apply",
                  height: 43,
                  width: 150,
                  color: darkMode ? Colors.black : Colors.white,
                  circular: true)
            ],
          ),
        ),
      ),
    );
  }
}
