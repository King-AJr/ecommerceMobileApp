import 'package:cloud_firestore/cloud_firestore.dart';

class BrandModel {
  String id;
  String name;
  String? logo;
  bool? isFeatured;
  int? productsCount;

  BrandModel({
    required this.id,
    required this.name,
    this.logo,
    this.isFeatured,
    this.productsCount,
  });

  ///Empty helper function
  static BrandModel empty() => BrandModel(
        id: '',
        name: '',
        logo: '',
        isFeatured: false,
        productsCount: 0,
      );

  ///convert model to json
  toJson() {
    return {
      'id': id,
      'Name': name,
      'Logo': logo,
      'isFeatured': isFeatured,
      'productsCount': productsCount,
    };
  }

  ///Convert json document snapshot to model
  factory BrandModel.fromJson(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return BrandModel(
        id: document.id,
        name: data['Name'] ?? '',
        logo: data['logo'] ?? '',
        isFeatured: data['isFeatured'] ?? false,
        productsCount: data['productsCount'] ?? 0,
      );
    }
    return BrandModel.empty();
  }
}
