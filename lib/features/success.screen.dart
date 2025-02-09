import 'package:ecommerce_app/common/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app/features/home/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/image.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Success!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                  "Your order will be delivered soon\nThank you for choosing our app",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const MyBottomNavigationBar()),
                  child: Text('Continue Shopping',
                      style: Theme.of(context).textTheme.labelMedium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
