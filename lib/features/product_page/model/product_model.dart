

import 'dart:convert';
import 'dart:ffi';

ProductDetailsModel productDetailsModelFromJson(String str) =>
    ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) =>
    json.encode(data.toJson());

class ProductDetailsModel {
  String message;
  List<ProductItem> productData;

  ProductDetailsModel({
    required this.message,
    required this.productData,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        message: json["message"],
        productData: List<ProductItem>.from(
            json["productData"].map((x) => ProductItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "productData": List<dynamic>.from(productData.map((x) => x.toJson())),
      };
}

class ProductItem {
  String id;
  String name;
  String desc;
  String? wishlisted;
  int actualPrice;
  int discountedPrice;
  int discount;
  String category;
  String subCategory;
  String type;
  String genre;
  String brand;
  String imageUrl;
  double? rating;
  int? noOfReview;

  ProductItem({
    required this.id,
    required this.name,
    required this.desc,
    this.wishlisted,
    required this.actualPrice,
    required this.discountedPrice,
    required this.discount,
    required this.category,
    required this.subCategory,
    required this.type,
    required this.genre,
    required this.brand,
    required this.imageUrl,
    this.rating,
    this.noOfReview,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        id: json["_id"],
        name: json["name"],
        desc: json["desc"],
        wishlisted: json["wishlisted"],
        actualPrice: json["actual_price"],
        discountedPrice: json["discounted_price"],
        discount: json["discount"],
        category: json["category"],
        subCategory: json["sub_category"],
        type: json["type"],
        genre: json["genre"],
        brand: json["brand"],
        imageUrl: json["image_url"],
        rating: (json['rating'] != null) ? (json['rating'] as num).toDouble() : null,
        noOfReview: json["no_of_review"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "desc": desc,
        "wishlisted": wishlisted,
        "actual_price": actualPrice,
        "discounted_price": discountedPrice,
        "discount": discount,
        "category": category,
        "sub_category": subCategory,
        "type": type,
        "genre": genre,
        "brand": brand,
        "image_url": imageUrl,
        "rating": rating,
        "no_of_review": noOfReview,
      };
}
