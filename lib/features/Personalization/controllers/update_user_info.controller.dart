import 'package:ecommerce_app/data/user/user_repository.dart';
import 'package:ecommerce_app/features/Personalization/controllers/user.controller.dart';
import 'package:ecommerce_app/features/Personalization/screens/profile_settings.screen.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateUserInfoController extends GetxController {
  static UpdateUserInfoController get instance => Get.find();

  final userRepository = Get.put(UserRepository());
  final userController = UserController.instance;

  ///variables

  Future<void> updateSingleField(
      String? field, String? value, GlobalKey<FormState> formKey) async {
    try {
      FullScreenLoader.openLoadingDialog(
          'Updating your information...', 'assets/image/spinner.gif');

      //form validation
      if (!formKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      //convert to json
      final Map<String, dynamic> json = {
        '$field': value,
      };

      //pass json to api
      await userRepository.updateSingleField(json);

      //update rx value
      if (field == 'Email') {
        userController.user.value.email = value!;
        userController.user.refresh();
      } else if (field == 'Phone') {
        userController.user.value.phoneNumber = value!;
        userController.user.refresh();
      }

      FullScreenLoader.stopLoader();

      MyLoader.successSnackBar(
          title: 'Success!', message: '$field successfully updated');
    } catch (e) {
      FullScreenLoader.stopLoader();
      MyLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> updateName(
      String firstName, String lastName, GlobalKey<FormState> formKey) async {
    try {
      FullScreenLoader.openLoadingDialog(
          'Updating your information...', 'assets/image/spinner.gif');

      //form validation
      if (!formKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      //convert to json
      Map<String, dynamic> name = {
        'FirstName': firstName,
        'LastName': lastName
      };

      //pass json to api
      await userRepository.updateSingleField(name);

      //update Rx value
      userController.user.value.firstName = firstName;
      userController.user.value.lastName = lastName;
      userController.user.refresh();

      FullScreenLoader.stopLoader();

      MyLoader.successSnackBar(
          title: 'Success!', message: "Name successfully updated");

      //move to profile page
      Get.off(() => const SettingsScreen());
    } catch (e) {
      FullScreenLoader.stopLoader();
      MyLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> closeAccount() async {}
}
