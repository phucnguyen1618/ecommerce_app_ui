import 'package:ecommerce_app_ui/modules/container/view/container_page.dart';
import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:ecommerce_app_ui/modules/shop/view/categories_page.dart';
import 'package:ecommerce_app_ui/modules/shop/view/list_product_category_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends GetView<ShopController> {

  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerPage(
      selectIndex: 1,
      child: Scaffold(
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CategoriesPage(),
            ListProductCategoryPage(),
          ],
        ),
      ),
    );
  }
}
