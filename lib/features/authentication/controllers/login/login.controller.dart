import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/Personalization/controllers/user.controller.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:ecommerce_app/util/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  ///variables
  final localStorage = GetStorage();
  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    localStorage.read('REMEMBER_ME_EMAIL');
    if (localStorage.read('REMEMBER_ME_EMAIL') != null) {
      email.text = localStorage.read('REMEMBER_ME_EMAIL');
      rememberMe.value = true;
    }

    localStorage.read('REMEMBER_ME_PASSWORD');
    if (localStorage.read('REMEMBER_ME_PASSWORD') != null) {
      password.text = localStorage.read('REMEMBER_ME_PASSWORD');
      rememberMe.value = true;
    }
    super.onInit();
  }

  Future<void> emailAndPasswordSignIn() async {
    try {
      //start loader
      FullScreenLoader.openLoadingDialog('', 'assets/image/spinner.gif');

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        MyLoader.errorSnackBar(
            title: 'Oh Snap!',
            message: "You currently aren't connected to the internet");
        return;
      }

      //form validation
      if (!loginFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      //save data if remember me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text);
        localStorage.write('REMEMBER_ME_PASSWORD', password.text);
      }

      //CALL API
      final userCredential =
          await AuthenticationRepository.instance.logWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      //stop loader and redirect to home page
      FullScreenLoader.stopLoader();

      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    }

    ///
  }

  Future<void> googleSignIn() async {
    try {
      //start loader
      FullScreenLoader.openLoadingDialog(
          'Logging you in...', 'assets/image/spinner.gif');

      //check for internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        MyLoader.errorSnackBar(
            title: 'Oh Snap!',
            message: "You currently aren't connected to the internet");
        return;
      }

      //google authentication
      final userCredential =
          await AuthenticationRepository.instance.signInWithGoogle();

      //save user information
      await userController.saveUserRecord(userCredential);

      //remove loader
      FullScreenLoader.stopLoader();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }
}
