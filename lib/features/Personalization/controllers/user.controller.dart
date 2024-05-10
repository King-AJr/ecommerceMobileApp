import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/user/user_repository.dart';
import 'package:ecommerce_app/features/Personalization/screens/reauth_screen.dart';
import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:ecommerce_app/util/helpers/network_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  //variables
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final hidePassword = true.obs;
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  ///Save user information from any service provider
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        //conver name to first and last name
        final nameParts =
            UserModel.splitFullName(userCredential.user!.displayName!);
        final user = UserModel(
          id: userCredential.user!.uid,
          email: userCredential.user!.email ?? '',
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '',
        );

        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      MyLoader.warningSnackBar(
          title: "Data not saved",
          message:
              'Something went wrong while saving your information. You can resave your information in your profile');
    }
  }

  Future<void> fetchUserRecord() async {
    try {
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
  }

  void deleteAccountPopUp() {
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(8),
      title: 'Delete Account',
      middleText:
          'Are you sure you want to delete your account? This action is irreversible and all your data will be removed permanently.',
      confirm: ElevatedButton(
        onPressed: () => deleteUserAccount(),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text('Delete'),
        ),
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.overlayContext!).pop(),
        child: const Text('Cancel'),
      ),
      onConfirm: () async {},
    );
  }

  Future<void> deleteUserAccount() async {
    try {
      FullScreenLoader.openLoadingDialog(
          'Processing...', 'assets/image/spinner.gif');

      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;

      if (provider.isNotEmpty) {
        print(provider);
        if (provider.contains('google.com')) {
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          FullScreenLoader.stopLoader();
          Get.offAll(() => const LoginScreen());
        } else if (provider == 'password') {
          print('in password provider');
          FullScreenLoader.stopLoader();
          Get.to(() => const ReAuthLoginScreen());
        }
      }
    } catch (e) {
      FullScreenLoader.stopLoader();
      MyLoader.warningSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> reAuthenticateUser() async {
    try {
      //start loader
      FullScreenLoader.openLoadingDialog(
          'Processing...', 'assets/image/spinner.gif');

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        MyLoader.errorSnackBar(
            title: 'Oh Snap!',
            message: "You currently aren't connected to the internet");
        return;
      }

      //validate form
      if (!reAuthFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      //reauthenticate user
      await AuthenticationRepository.instance
          .reAuthenticateWithEmailAndPassword(
              verifyEmail.text.trim(), verifyPassword.text.trim());

      //delete account
      await AuthenticationRepository.instance.deleteAccount();

      //stop loader and redirect to login screen
      FullScreenLoader.stopLoader();
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      FullScreenLoader.stopLoader();
      MyLoader.warningSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
