import 'dart:developer';

import 'package:ecommerce_app_ui/data/database/local_database.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_sort_by.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  final sortByList = LocalDatabase.sortByList.obs;
  var isChangeLayout = false.obs;
  var contentSortBy = 'Price: lowest to high'.obs;

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

  onChangeLayout() {
    isChangeLayout.value = !isChangeLayout.value;
  }
}
