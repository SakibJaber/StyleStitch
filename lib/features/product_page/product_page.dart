import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/components/product_card.dart';
import 'package:style_stitch/features/product_page/controller/product_controller.dart';
import 'package:style_stitch/theme/colors.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      appBar: AppBar(
        //  elevation: 1.0,
        backgroundColor: AppColor.whiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Men Clothing',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Text(
              '2345 items',
              style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.card_travel),
            ),
          ),
        ],
        centerTitle: false,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Wrap(
                  children: controller.productList
                      .map((item) => ProductCard(
                            item: item,
                          ))
                      .toList(),
                ),
              ),
      ),
    );
  }
}
