import 'dart:async';

import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/verify_email/success.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/verify_email/verify_email.screen.dart';
import 'package:ecommerce_app/features/success.screen.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///send email whenever verify screen appears and set timer for autoredirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerRedirect();
    super.onInit();
  }

  ///Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      MyLoader.successSnackBar(
          title: 'Email sent',
          message: 'Please check your inbox and verify your email');
    } catch (e) {
      MyLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  ///Timer to automatically redirect to email verification page
  setTimerRedirect() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        await FirebaseAuth.instance.currentUser?.reload();
        if (FirebaseAuth.instance.currentUser?.emailVerified == true) {
          timer.cancel();
          Get.off(() => const EmailSuccessScreen());
        }
      },
    );
  }

  ///Manually check if email is verified or not
  checkEmailVerificationStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.off(const EmailSuccessScreen());
      } else {
        Get.off(const VerifyEmailScreen());
      }
    }
  }
}
