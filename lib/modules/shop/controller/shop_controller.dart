import 'dart:developer';

import 'package:ecommerce_app_ui/data/models/sortby.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_sort_by.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var pageController = PageController(initialPage: 0);
  var text = ''.obs;
  var isSelected = false.obs;
  final sortByList = [
    SortBy('Popular', false),
    SortBy("Newest", false),
    SortBy('Custom review', false),
    SortBy('Price: lowest to high', true),
    SortBy('Price: highest to low', false),
  ].obs;
  var contentSortBy = 'Price: lowest to high'.obs;
  var isChangeLayout = false.obs;

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
