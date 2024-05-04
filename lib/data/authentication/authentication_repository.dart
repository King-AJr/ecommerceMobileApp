import 'package:ecommerce_app/common/widgets/bottomNavBar.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/verify_email/verify_email.screen.dart';
import 'package:ecommerce_app/util/helpers/firebase_auth_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  // ignore: override_on_non_overriding_member
  void screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const MyBottomNavigationBar());
      } else {
        Get.offAll(
          () => VerifyEmailScreen(email: _auth.currentUser?.email),
        );
      }
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);

      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(
              () => const LoginScreen(),
            )
          : Get.offAll(() => const SignupScreen());
    }
  }

  //LOGIN AUTHENTICATION

  ///SIGNUP AUTHENTICATION
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (authError) {
      throw handleFirebaseAuthException(authError.code);
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on FormatException catch (_) {
      throw handleFirebaseFormatException();
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
