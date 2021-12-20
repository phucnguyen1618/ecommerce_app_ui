import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {

  var isItemClicked = 0.obs;

  var pageController = PageController(initialPage:  0);

  onItemMenuClicked(int index) {
    isItemClicked.value = index;
    pageController.jumpToPage(index);
  }
}