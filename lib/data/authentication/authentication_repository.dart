import 'package:ecommerce_app/common/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/verify_email/verify_email.screen.dart';
import 'package:ecommerce_app/util/helpers/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    screenRedirect();
  }

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

  ///LOGIN AUTHENTICATION
  Future<UserCredential> logWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
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

  ///EMAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (authError) {
      throw handleFirebaseAuthException(authError.code);
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on FormatException catch (_) {
      throw handleFirebaseFormatException();
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///GOOGLE SIGN-IN
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (authError) {
      throw handleFirebaseAuthException(authError.code);
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on FormatException catch (_) {
      throw handleFirebaseFormatException();
    } catch (e) {
      print(e.toString());
      throw 'Something went wrong. Please try again';
    }
  }

  ///FORGOT PASSWORD
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (authError) {
      throw handleFirebaseAuthException(authError.code);
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on FormatException catch (_) {
      throw handleFirebaseFormatException();
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///LOGOUT USER
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (authError) {
      throw handleFirebaseAuthException(authError.code);
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on FormatException catch (_) {
      throw handleFirebaseFormatException();
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
