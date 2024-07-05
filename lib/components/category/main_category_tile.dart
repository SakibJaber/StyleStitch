import 'package:flutter/material.dart';
import 'package:style_stitch/components/category/sub_category_tile.dart';
import 'package:style_stitch/features/categories/model/category_details_model.dart';

class MainCategoryTile extends StatelessWidget {
  const MainCategoryTile({super.key, required this.productCategory});

  final ProductCategory productCategory;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        collapsedBackgroundColor:
            Color(int.parse(productCategory.backgroundColor)),
        title: Container(
            height: 100,
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            productCategory.name,
                            style: const TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 32,
                          )
                        ],
                      ),
                      Text(
                        productCategory.description,
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
                Image.network(
                  'http://192.168.0.105:3000/images/${productCategory.imageUrl}.png',
                  fit: BoxFit.fitHeight,
                )
              ],
            )),
        trailing: const SizedBox.shrink(),
        children: productCategory.subCategory
            .map((item) =>  SubCategoryTile(subCategory: item ,))
            .toList());
  }
}
