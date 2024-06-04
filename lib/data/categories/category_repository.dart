import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/shop/Categories/models/categories.model.dart';
import 'package:ecommerce_app/util/helpers/exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  //variables
  final _db = FirebaseFirestore.instance;

  ///Get all categories
  Future<List<CategoryModel>> getCategories() async {
    try {
      final snapshots = await _db.collection('categories').get();
      final list = snapshots.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///Get all sub categories

  ///Upload categories to Cloud Firestore
}
