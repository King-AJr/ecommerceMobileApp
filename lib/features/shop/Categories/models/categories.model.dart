import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isParent;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    this.parentId = '',
    required this.isParent,
  });

  ///Empty Helper function
  static CategoryModel empty() {
    return CategoryModel(
      id: '',
      name: '',
      image: '',
      parentId: '',
      isParent: false,
    );
  }

  ///Convert model to json structure
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'Name': name,
      'Image': image,
      'ParentId': parentId,
      'isParent': isParent,
    };
  }

  ///Convert json document snapshot to model
  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return CategoryModel(
        id: document.id,
        name: data['Name'] ?? '',
        image: data['image'] ?? '',
        isParent: data['isParent'] ?? false,
        parentId: data['ParentId'] ?? '',
      );
    }
    return CategoryModel.empty();
  }
}
