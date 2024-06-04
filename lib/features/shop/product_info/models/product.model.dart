import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/shop/product_info/models/brand.model.dart';
import 'package:ecommerce_app/features/shop/product_info/models/product_attributes.model.dart';
import 'package:ecommerce_app/features/shop/product_info/models/product_variation.model.dart';

class ProductModel {
  String id;
  int stock;
  String? sku;
  double price;
  String title;
  bool? isFeatured;
  double salePrice;
  List<String> thumbnails;
  BrandModel? brand;
  String description;
  String productType;
  String categoryId;
  List<String> categories;
  String? tag;
  List<ProductAttributeModel>? productAttribute;
  List<ProductVariationModel>? productVariation;

  ProductModel({
    required this.id,
    required this.stock,
    this.sku,
    required this.price,
    required this.title,
    this.isFeatured,
    this.salePrice = 0.0,
    required this.thumbnails,
    this.brand,
    required this.description,
    required this.productType,
    required this.categoryId,
    this.productAttribute,
    this.productVariation,
    required this.categories,
    this.tag,
  });

  ///create empty
  static ProductModel empty() {
    return ProductModel(
      id: "",
      stock: 0,
      price: 0.0,
      title: "",
      salePrice: 0.0,
      thumbnails: [],
      description: "",
      productType: "",
      categoryId: "",
      categories: [],
    );
  }

  ///data format
  toJson() {
    return {
      "id": id,
      "Stock": stock,
      "Sku": sku,
      "Price": price,
      "Title": title,
      "IsFeatured": isFeatured,
      "SalePrice": salePrice,
      "Thumbnails": thumbnails,
      "Brand": brand!.toJson(),
      "Description": description,
      "ProductType": productType,
      "CategoryId": categoryId,
      "ProductAttribute": productAttribute != null
          ? productAttribute!.map((e) => e.toJson()).toList()
          : [],
      "ProductVariation": productVariation != null
          ? productVariation!.map((e) => e.toJson()).toList()
          : [],
    };
  }

  ///convert from json document snapshot to model
  factory ProductModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() == null) return ProductModel.empty();
    final data = document.data()!;
    return ProductModel(
      id: data["id"],
      stock: data["Stock"] ?? 0,
      sku: data["Sku"],
      tag: data["Tag"] ?? "",
      price: double.parse((data["Price"] ?? 0).toString()),
      title: data["Title"],
      isFeatured: data["IsFeatured"] ?? false,
      salePrice: double.parse((data["SalePrice"] ?? 0).toString()),
      thumbnails: data["Thumbnails"] != null
          ? List<String>.from(data['Thumbnails'])
          : [],
      brand: BrandModel.fromJson(data["Brand"]),
      description: data["Description"] ?? '',
      productType: data["ProductType"] ?? '',
      categoryId: data["CategoryId"] ?? '',
      productAttribute: (data["ProductAttribute"] as List<dynamic>)
          .map((e) => ProductAttributeModel.fromJson(e))
          .toList(),
      productVariation: (data["ProductVariation"] as List<dynamic>)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
      categories: data["Categories"] != null
          ? List<String>.from(data['Categories'])
          : [],
    );
  }
}
