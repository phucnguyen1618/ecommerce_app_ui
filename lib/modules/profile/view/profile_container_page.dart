import 'package:ecommerce_app_ui/modules/detail/view/order_detail_page.dart';
import 'package:ecommerce_app_ui/modules/order/view/my_order_page.dart';
import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:ecommerce_app_ui/modules/profile/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileContainerPage extends GetView<ProfileContainerController> {
  const ProfileContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ProfilePage(),
          MyOrderPage(),
          OrderDetailPage(),
        ],
      ),
    );
  }
}