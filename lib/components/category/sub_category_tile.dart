import 'package:flutter/material.dart';
import 'package:style_stitch/components/category/sub_sub_ttile.dart';
import 'package:style_stitch/features/categories/model/sub_category_details.dart';

class SubCategoryTile extends StatelessWidget {
  const SubCategoryTile({super.key, required this.subCategory});
  final SubCategory subCategory;

  @override
  Widget build(BuildContext context) {
    Widget title = Text(
      subCategory.name,
      style: const TextStyle(fontWeight: FontWeight.w500),
    );

    Widget leading = Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Image.asset(
        'assets/images/b1-bg.png',
        width: 40,
        height: 40,
      ),
    );
    return subCategory.leafCategory!=List.empty()
        ? ExpansionTile(
            // collapsedBackgroundColor: Colors.teal,
            title: title,
            leading: leading,
            children: subCategory.leafCategory
                .map(
                  (item) => LeafCategoryTile(
                    leafCategory: item,
                  ),
                )
                .toList())
        : ListTile(
            title: title,
            leading: leading,
          );
  }
}
