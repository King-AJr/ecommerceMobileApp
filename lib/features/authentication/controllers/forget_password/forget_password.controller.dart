import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/forgot_password/reset_password.screen.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:ecommerce_app/util/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      //start loader
      FullScreenLoader.openLoadingDialog(
          'Processing your request...', 'assets/images/spinner.gif');

      //check for validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }
      //check for network connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        MyLoader.errorSnackBar(
            title: 'Oh Snap!',
            message: "You currently aren't connected to the internet");
        return;
      }

      //Send email
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      //stop loader
      FullScreenLoader.stopLoader();

      //success popup
      MyLoader.successSnackBar(
          title: 'Email sent',
          message: 'Email link sent to reset your password'.tr);

      Get.to(() => const ResetPasswordScreen());
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //start loader
      FullScreenLoader.openLoadingDialog(
          'Processing your request...', 'assets/images/spinner.gif');

      //check for validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }
      //check for network connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        MyLoader.errorSnackBar(
            title: 'Oh Snap!',
            message: "You currently aren't connected to the internet");
        return;
      }

      //Send email
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      FullScreenLoader.stopLoader();

      //success popup
      MyLoader.successSnackBar(
          title: 'Email sent',
          message: 'Email link sent to reset your password'.tr);
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }
}
