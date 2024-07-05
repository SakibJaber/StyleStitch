import 'dart:convert';

import 'package:style_stitch/features/categories/model/sub_category_details.dart';

MainCategoryModel mainCategoryModelFromJson(String str) =>
    MainCategoryModel.fromJson(json.decode(str));

String mainCategoryModelToJson(MainCategoryModel data) =>
    json.encode(data.toJson());

class MainCategoryModel {
  String message;
  List<ProductCategory> productCategory;

  MainCategoryModel({
    required this.message,
    required this.productCategory,
  });

  factory MainCategoryModel.fromJson(Map<String, dynamic> json) =>
      MainCategoryModel(
        message: json["message"],
        productCategory: List<ProductCategory>.from(
            json["productCategory"].map((x) => ProductCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "productCategory":
            List<dynamic>.from(productCategory.map((x) => x.toJson())),
      };
}

class ProductCategory {
  String id;
  String name;
  String description;
  String imageUrl;
  String backgroundColor;
  List<SubCategory> subCategory;
  bool? isExpandable;

  ProductCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.backgroundColor,
    required this.subCategory,
    this.isExpandable,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        backgroundColor: json["backgroundColor"],
        subCategory: List<SubCategory>.from(
            json["subCategory"].map((x) => SubCategory.fromJson(x))),
        isExpandable: json["isExpandable"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "imageUrl": imageUrl,
        "backgroundColor": backgroundColor,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
        "isExpandable": isExpandable,
      };
}
