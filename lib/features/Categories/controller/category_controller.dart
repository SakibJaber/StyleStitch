import 'dart:convert';

import 'package:get/get.dart';
import 'package:style_stitch/features/categories/model/category_details_model.dart';
import 'package:style_stitch/service/network/network_handler.dart';

class CategoryController extends GetxController {
  MainCategoryModel? mainCategoryModel;
  RxBool isLoading = false.obs;

  List<ProductCategory> mainCategoryList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchCategory();
  }

  void fetchCategory() async {
    isLoading(true);
    var response = await NetworkHandler.get('product/category/getAll', '');
    mainCategoryList =
        MainCategoryModel.fromJson(json.decode(response)).productCategory;

    isLoading(false);
  }
}
