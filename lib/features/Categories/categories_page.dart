import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/components/category/main_category_tile.dart';
import 'package:style_stitch/components/category/sub_category_tile.dart';
import 'package:style_stitch/components/product_card.dart';
import 'package:style_stitch/features/categories/controller/category_controller.dart';
import 'package:style_stitch/features/register/register_page.dart';
import 'package:style_stitch/theme/colors.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  CategoryController controller = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.search),
          // ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () {
            if (controller.isLoading == true) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: controller.mainCategoryList.length,
              itemBuilder: (context, index) {
                return MainCategoryTile(
                  productCategory: controller.mainCategoryList[index],
                );
              },
            );
          },
        ),
      ),
      // body: const Column(
      //   children: [
      //     MainCategoryTile(),
      //   ],
      // ),
    );
  }
}
