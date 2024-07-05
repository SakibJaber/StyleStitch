import 'package:style_stitch/features/categories/model/leaf_category_model.dart';

class SubCategory {
  String name;
  String imageUrl;
  bool isExpandable;
  List<LeafCategory> leafCategory;

  SubCategory({
    required this.name,
    required this.imageUrl,
    required this.isExpandable,
    required this.leafCategory,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        name: json["name"],
        imageUrl: json["imageUrl"],
        isExpandable: json["isExpandable"],
        leafCategory: List<LeafCategory>.from(
            json["leafCategory"].map((x) => LeafCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "isExpandable": isExpandable,
        "leafCategory": List<dynamic>.from(leafCategory.map((x) => x.toJson())),
      };
}
