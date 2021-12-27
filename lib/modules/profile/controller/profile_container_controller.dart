import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileContainerController extends GetxController {

  var pageController = PageController(initialPage: 0);

  onMoveToOrderPage() {
    pageController.jumpToPage(1);
  }

  onItemMenuClicked(String routeName) {
    Get.toNamed(routeName);
  }

  onItemOrderClicked(){
    pageController.jumpToPage(2);
  }

  onBack(int index){
    pageController.jumpToPage(index);
  }
}