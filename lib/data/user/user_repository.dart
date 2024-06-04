import 'dart:io';

import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/util/helpers/exceptions.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class UserRepository extends GetxController {
  static UserRepository instance = Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Save user record to firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
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

  ///fetch user details based on user id
  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db
          .collection('users')
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
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

  ///update user details in firestore
  Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db
          .collection('users')
          .doc(updatedUser.id)
          .update(updatedUser.toJson());
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

  ///update a single field
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection('users')
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .update(json);
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

  ///remove user data from firestore
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection('users').doc(userId).delete();
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

  ///upload any image to firebase storage
  Future<String> uploadImage(String imagePath, XFile imageFile) async {
    try {
      final ref = FirebaseStorage.instance.ref(imagePath).child(imageFile.name);
      await ref.putFile(File(imageFile.path));
      final url = await ref.getDownloadURL();
      return url;
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
