import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/features/authentication/screens/verify_email/verify_email.screen.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:ecommerce_app/util/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  ///variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      //start loading
      FullScreenLoader.openLoadingDialog(
          'We are processing you information...', 'assets/images/spinner.gif');

      //form validation
      if (!signupFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MyLoader.errorSnackBar(
            title: "oh Snap!",
            message: 'You currently are not connected to the internet');
        FullScreenLoader.stopLoader();
        return;
      }

      //privacy policy check
      if (!privacyPolicy.value) {
        MyLoader.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account you must read and accept Privacy policy & Terms of Use.');
        return;
      }

      //register user in the firebase auth and save user data in the firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              emailController.text.trim(), passwordController.text.trim());

      //save authenticated user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstnameController.text.trim(),
        lastName: lastnameController.text.trim(),
        email: emailController.text.trim(),
        phoneNumber: phoneController.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      FullScreenLoader.stopLoader();

      //show success message
      MyLoader.successSnackBar(
          title: 'Congratulations',
          message:
              "Your account has been successfully created, verify email to continue");

      //move to email verification screen
      Get.to(
        () => VerifyEmailScreen(
          email: emailController.text.trim(),
        ),
      );
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }
}
