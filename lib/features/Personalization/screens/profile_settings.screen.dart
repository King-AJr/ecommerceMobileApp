import 'package:ecommerce_app/common/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/Personalization/controllers/user.controller.dart';
import 'package:ecommerce_app/features/Personalization/screens/changeEmail.dart';
import 'package:ecommerce_app/features/Personalization/screens/changeName.dart';
import 'package:ecommerce_app/features/Personalization/screens/change_phone.dart';
import 'package:ecommerce_app/features/Personalization/screens/profile_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingsScreen> {
  bool _enableSalesNotification = true;
  bool _enableNewArrivalsNotification = false;
  bool _enableDeliveryStatusNotification = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: settingsAppBar(
        context,
        'Settings',
        leadingCallback: () => Get.offAll(
          () => const MyBottomNavigationBar(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Obx(
                    () {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty
                          ? networkImage
                          : 'assets/images/smilingwoman.jpeg';
                      return CircularImage(
                          image: image,
                          isNetworkImage: networkImage.isNotEmpty,
                          height: 80,
                          width: 80);
                    },
                  ),
                  TextButton(
                    onPressed: () => controller.uploadUserProfile(),
                    child: Text('Change Profile picture',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 16),
            const SectionHeading(
              title: "Profile information",
              showActionButton: false,
            ),
            const SizedBox(height: 16),
            Obx(
              () => ProfileRow(
                  field: 'Name: ',
                  value: controller.user.value.FullName,
                  onPressed: () => Get.to(() => ChangeName())),
            ),
            Obx(
              () => ProfileRow(
                  field: 'Email: ',
                  value: controller.user.value.email,
                  onPressed: () => Get.to(() => ChangeEmail())),
            ),
            const Divider(),
            const SizedBox(height: 16),
            const SectionHeading(
              title: "Personal information",
              showActionButton: false,
            ),
            const SizedBox(height: 16),
            ProfileRow(
                field: 'USER ID',
                value: controller.user.value.id,
                onPressed: null,
                icon: Iconsax.copy),
            Obx(
              () => ProfileRow(
                  field: 'Phone number ',
                  value: controller.user.value.phoneNumber,
                  onPressed: () => Get.to(() => ChangePhone())),
            ),
            const ProfileRow(field: 'Gender', value: 'Male', onPressed: null),
            const Divider(),
            const SizedBox(height: 16),
            const SectionHeading(
              title: "Notification",
              showActionButton: false,
            ),
            _buildNotificationRow(
              label: "Sales",
              value: _enableSalesNotification,
              onChanged: (value) {
                setState(() {
                  _enableSalesNotification = value;
                });
              },
            ),
            _buildNotificationRow(
              label: "New arrivals",
              value: _enableNewArrivalsNotification,
              onChanged: (value) {
                setState(() {
                  _enableNewArrivalsNotification = value;
                });
              },
            ),
            _buildNotificationRow(
              label: "Delivery status change",
              value: _enableDeliveryStatusNotification,
              onChanged: (value) {
                setState(() {
                  _enableDeliveryStatusNotification = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () => controller.deleteAccountPopUp(),
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationRow({
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeColor: const Color(0xFF2AA952),
        ),
      ],
    );
  }
}
