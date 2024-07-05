class LeafCategory {
  String name;
  String imageUrl;

  LeafCategory({
    required this.name,
    required this.imageUrl,
  });

  factory LeafCategory.fromJson(Map<String, dynamic> json) => LeafCategory(
        name: json["name"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
      };
}
