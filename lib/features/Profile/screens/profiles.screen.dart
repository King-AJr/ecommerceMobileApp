import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/Profile/screens/profile_item.dart';
import 'package:ecommerce_app/features/Profile/screens/profile_settings.screen.dart';
import 'package:ecommerce_app/features/my_orders/screens/my_orders.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dummy user data (replace with actual user data logic)
    final userData = {
      'name': FirebaseAuth.instance.currentUser?.displayName,
      'email': FirebaseAuth.instance.currentUser?.email,
      'orderCount': 12,
      'addressCount': 3,
      'paymentMethod': 'Visa **34',
      'reviewCount': 4,
    };

    return Scaffold(
      appBar: MyBottomAppBar(context, "Profile"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () => Get.to(() => const SettingsScreen()),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/smilingwoman.jpeg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${userData['name']}',
                            style: const TextStyle(
                              fontFamily: "Metropolis-semibold",
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '${userData['email']} ',
                            style: const TextStyle(
                              fontFamily: "Metropolis-light",
                              color: Color(0xFF9B9B9B),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                GestureDetector(
                  onTap: () => Get.to(() => const MyOrdersScreen()),
                  child: ProfileItem(
                    title: 'My orders',
                    subtitle: 'Already have ${userData['orderCount']} orders',
                  ),
                ),
                ProfileItem(
                  title: 'Shipping addresses',
                  subtitle: '${userData['addressCount']} addresses',
                ),
                ProfileItem(
                  title: 'Payment methods',
                  subtitle: '${userData['paymentMethod']}',
                ),
                ProfileItem(
                  title: 'My reviews',
                  subtitle: 'Reviews for ${userData['reviewCount']} items',
                ),
                const ProfileItem(
                  title: 'Promocodes',
                  subtitle: 'You have special promocodes',
                ),
                GestureDetector(
                  onTap: () => Get.to(() => const SettingsScreen()),
                  child: const ProfileItem(
                    title: 'Settings',
                    subtitle: 'Notifications, passwords',
                  ),
                ),
                // Add more profile items as needed
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                onPressed: () async {
                  await AuthenticationRepository.instance.signOut();
                  AuthenticationRepository.instance.screenRedirect();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primary,
                ),
                child: const Text(
                  'SIGN OUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Metropolis-regular",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
