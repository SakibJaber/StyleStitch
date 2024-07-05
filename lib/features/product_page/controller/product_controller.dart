import 'dart:convert';

import 'package:get/get.dart';
import 'package:style_stitch/features/product_page/model/product_model.dart';
import 'package:style_stitch/service/network/network_handler.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProductDetails();
  }

  RxBool isLoading = false.obs;
  List<ProductItem> productList = [];

  getProductDetails() async {
    isLoading(true);
    var response = await NetworkHandler.get('product/getAll', '');

    ProductDetailsModel productDetailsData =
        ProductDetailsModel.fromJson(json.decode(response));
    print('+++++++++++++++++++');

    productList = productDetailsData.productData;
    print(productList);

    isLoading(false);
  }
}
