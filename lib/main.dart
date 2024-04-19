import 'package:ecommerce_app/controllers/login.dart';
import 'package:ecommerce_app/pages/adding_address.dart';
import 'package:ecommerce_app/pages/brand_list.dart';
import 'package:ecommerce_app/pages/catalog_one.dart';
import 'package:ecommerce_app/pages/catalog_two.dart';
import 'package:ecommerce_app/pages/categories.dart';
import 'package:ecommerce_app/pages/category_two.dart';
import 'package:ecommerce_app/pages/checkout.dart';
import 'package:ecommerce_app/pages/favorites_grid.dart';
import 'package:ecommerce_app/pages/favorites_list.dart';
import 'package:ecommerce_app/pages/filters.dart';
import 'package:ecommerce_app/pages/finding_results.dart';
import 'package:ecommerce_app/pages/forgot_password.dart';
import 'package:ecommerce_app/pages/main_page.dart';
import 'package:ecommerce_app/pages/main_page2.dart';
import 'package:ecommerce_app/pages/main_page3.dart';
import 'package:ecommerce_app/pages/my_bag.dart';
import 'package:ecommerce_app/pages/my_orders.dart';
import 'package:ecommerce_app/pages/order_details.dart';
import 'package:ecommerce_app/pages/payment_cards.dart';
import 'package:ecommerce_app/pages/product_info.dart';
import 'package:ecommerce_app/pages/profile.dart';
import 'package:ecommerce_app/pages/ratings_and_reviews.dart';
import 'package:ecommerce_app/pages/settings.dart';
import 'package:ecommerce_app/pages/shipping_address.dart';
import 'package:ecommerce_app/pages/success.dart';
import 'package:ecommerce_app/pages/taking_a_photo.dart';
import 'package:ecommerce_app/pages/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUpPage(),
        '/login': (context) => const LoginController(),
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
        '/product_info': (context) => const ProductInfo(),
        '/ratings_and_reviews': (context) => const RatingsAndReview(),
        '/favorite_list': (context) => const FavoriteList(),
        '/favorites_grid': (context) => const FavoritesGrid(),
        '/my_bag': (context) => const MyBag(),
        '/checkout': (context) => const Checkout(),
        '/payment_cards': (context) => const PaymentCards(),
        '/shipping_addresses': (context) => const ShippingAddress(),
        '/add_address': (context) => const AddAddress(),
        '/success': (context) => const Success(),
        '/profile': (context) => const Profile(),
        '/my_orders': (context) => const MyOrder(),
        '/order_details': (context) => const OrderDetails(),
        '/settings': (context) => const Settings()
      },
    ),
  );
}
