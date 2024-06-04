import 'package:ecommerce_app/common/widgets/category_shimmer.dart';
import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/Personalization/controllers/user.controller.dart';
import 'package:ecommerce_app/features/Personalization/screens/profile_item.dart';
import 'package:ecommerce_app/features/Personalization/screens/profile_settings.screen.dart';
import 'package:ecommerce_app/features/my_orders/screens/my_orders.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

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
                    Obx(
                      () {
                        if (controller.isLoading.value) {
                          return const SizedBox(
                              width: 150, child: CategoryShimmer());
                        }

                        final networkImage =
                            controller.user.value.profilePicture;
                        final image = networkImage.isNotEmpty
                            ? networkImage
                            : 'assets/images/smilingwoman.jpeg';
                        return SizedBox(
                          height: 80,
                          width: 80,
                          child: CircularImage(
                              image: image,
                              isNetworkImage: networkImage.isNotEmpty,
                              height: 80,
                              width: 80),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              controller.user.value.FullName,
                              style: const TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              controller.user.value.email,
                              style: const TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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
