import 'package:flutter/material.dart';
import 'package:style_stitch/features/categories/model/leaf_category_model.dart';

class LeafCategoryTile extends StatelessWidget {
  const LeafCategoryTile({super.key, required this.leafCategory});
  final LeafCategory leafCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
          ),
          child: Column(
            children: [
              Text(leafCategory.name),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
