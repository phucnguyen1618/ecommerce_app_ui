import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileContainerController extends GetxController {

  var pageController = PageController(initialPage: 0);

  onItemMenuClicked() {
    pageController.jumpToPage(1);
  }

  onSettingsClicked() {
    Get.toNamed(Routes.SETTINGS);
  }

  onItemOrderClicked(){
    pageController.jumpToPage(2);
  }

  onBack(int index){
    pageController.jumpToPage(index);
  }
}