import 'dart:developer';

import 'package:ecommerce_app_ui/data/database/local_database.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_sort_by.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var pageController = PageController(initialPage: 0);
  var text = ''.obs;
  var isSelected = false.obs;
  final sortByList = LocalDatabase.sortByList.obs;
  var contentSortBy = 'Price: lowest to high'.obs;
  var isChangeLayout = false.obs;
  var categoryList = LocalDatabase.categoryList;

  onItemCategoryClicked(String content) async {
    pageController.jumpToPage(1);
    text.value = content;
  }

  onFilterProductClicked() async {
    String result = await Get.toNamed(Routes.FILTERS);
    log(result);
  }

  showBottomSheetSortBy() async {
    contentSortBy.value = await Get.bottomSheet(
      const BottomSheetSortBy(),
    );
  }

  onItemSortByClicked(int index) {
    sortByList[index].isClicked = !sortByList[index].isClicked;
    Get.back(result: sortByList[index].content);
  }

  onItemProductClicked() {
    Get.toNamed(Routes.DETAIL);
  }

  onBack(int index){
    pageController.jumpToPage(index);
  }

  onChangeLayout() {
    isChangeLayout.value = !isChangeLayout.value;
  }
}
