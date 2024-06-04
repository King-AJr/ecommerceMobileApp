class ProductVariationModel {
  final String id;
  String sku;
  String image;
  String? description;
  double price, salePrice;
  int quantity;
  Map<String, String> attributeValues;

  ProductVariationModel({
    required this.id,
    this.sku = "",
    this.image = "",
    this.description = "",
    this.price = 0.0,
    this.salePrice = 0.0,
    this.quantity = 0,
    required this.attributeValues,
  });

  static ProductVariationModel empty() =>
      ProductVariationModel(id: "", attributeValues: {});

  ///Convert tojson
  toJson() {
    return {
      "id": id,
      "Sku": sku,
      "Image": image,
      "Description": description,
      "Price": price,
      "SalePrice": salePrice,
      "Quantity": quantity,
      "AttributeValues": attributeValues,
    };
  }

  ///Convert from json
  factory ProductVariationModel.fromJson(Map<String, dynamic> json) {
    final data = json;

    if(data.isEmpty) {
      return ProductVariationModel.empty();
    }
    return ProductVariationModel(
      id: data["id"] ?? 0,
      sku: data["Sku"] ?? 0,
      image: data["Image"] ?? 0,
      description: data["Description"] ?? '',
      price: double.parse((data["Price"] ?? 0).toString()),
      salePrice: double.parse((data["SalePrice"] ?? 0).toString()),
      quantity: data["Quantity"] ?? 0,
      attributeValues: Map<String, String>.from(data["AttributeValues"]),
    );
  }
}
