import 'package:ecommerce_app/pages/brand_list.dart';
import 'package:ecommerce_app/pages/catalog_one.dart';
import 'package:ecommerce_app/pages/catalog_two.dart';
import 'package:ecommerce_app/pages/categories.dart';
import 'package:ecommerce_app/pages/category_two.dart';
import 'package:ecommerce_app/pages/filters.dart';
import 'package:ecommerce_app/pages/finding_results.dart';
import 'package:ecommerce_app/pages/forgot_password.dart';
import 'package:ecommerce_app/pages/login.dart';
import 'package:ecommerce_app/pages/main_page.dart';
import 'package:ecommerce_app/pages/main_page2.dart';
import 'package:ecommerce_app/pages/main_page3.dart';
import 'package:ecommerce_app/pages/product_info.dart';
import 'package:ecommerce_app/pages/taking_a_photo.dart';
import 'package:ecommerce_app/pages/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/sign_up.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/product_info',
      routes: {
        '/': (context) => const SignUpPage(),
        '/login': (context) => const LoginPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/visual_search': (context) => const VisualSearch(),
        '/take_photo': (context) => const TakePhoto(),
        '/finding_results': (context) => const FindingResult(),
        '/main_page': (context) => const MainPage(),
        '/main_page_two': (context) => const MainPageTwo(),
        '/main_page_three': (context) => const MainPageThree(),
        '/categories': (context) => const Categories(),
        '/category_two': (context) => const CategoryTwo(),
        '/catalog_one': (context) => const CatalogOne(),
        '/catalog_two': (context) => const CatalogTwo(),
        '/filter_page': (context) => const FilterPage(),
        '/brand_list': (context) => const BrandList(),
        '/product_info': (context) => const ProductInfo()
      },
    ),
  );
}
