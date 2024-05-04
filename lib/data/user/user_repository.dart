import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/util/helpers/firebase_auth_exceptions.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
