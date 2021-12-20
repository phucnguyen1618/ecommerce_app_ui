import 'dart:developer';

import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'women_category_children.dart';

class WomenCategoriesWidget extends StatelessWidget {
  const WomenCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildItemWomenCategoryWidget(
          'New',
          'assets/images/image_01.jpg',
        ),
        buildItemWomenCategoryWidget(
          'Clothes',
          'assets/images/image_02.jpg',
        ),
        buildItemWomenCategoryWidget(
          'Shoes',
          'assets/images/image_03.jpeg',
        ),
        buildItemWomenCategoryWidget(
          'Accessories',
          'assets/images/image_04.jpeg',
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButtonWidget(
              content: 'VIEW ALL ITEMS',
              callback: () {
                log('Clicked');
              }),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 24.0),
          child: Text(
            'Choose category',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 11,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text(
                    'Item category',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                  onTap: () {
                    controller.onItemCategoryClicked('Phuc Nguyen');
                  },
                );
              }),
        ),
      ],
    );
  }
}
