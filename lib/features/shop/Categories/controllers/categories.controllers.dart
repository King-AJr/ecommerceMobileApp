import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/data/categories/category_repository.dart';
import 'package:ecommerce_app/features/shop/Categories/models/categories.model.dart';
import 'package:ecommerce_app/util/dummy_data.dart';
import 'package:ecommerce_app/util/helpers/exceptions.dart';
import 'package:ecommerce_app/util/helpers/full_screen_loader.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final _catergoryRepository = Get.put(CategoryRepository());

  Rx<bool> isLoading = false.obs;

  final _db = FirebaseFirestore.instance;

  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;

  RxList<CategoryModel> parentCategories = <CategoryModel>[].obs;

  final dummyCategories = DummyData;
  final cat = DummyData.dummyCategories;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  ///Load category data
  Future<void> fetchCategories() async {
    try {
      isLoading.value = true;

      //fetch categories from data source
      final categories = await _catergoryRepository.getCategories();

      //update categories list
      allCategories.assignAll(categories);

      //filter parent categories
      parentCategories.assignAll(allCategories
          .where((category) => category.isParent && category.parentId.isEmpty)
          .toList());
    } catch (e) {
      FullScreenLoader.stopLoader();
      //show error message
      MyLoader.errorSnackBar(title: "oh Snap!", message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  ///Load selected category data

  ///Get category or sub category data

  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      for (var category in categories) {
        await _db
            .collection('categories')
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (firebaseError) {
      throw handleFirebaseGeneralException(firebaseError.code);
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
