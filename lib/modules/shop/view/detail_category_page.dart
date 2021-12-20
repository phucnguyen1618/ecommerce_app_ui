import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:ecommerce_app_ui/widgets/card/women_category_card.dart';
import 'package:ecommerce_app_ui/widgets/item/item_grid_women_category_widget.dart';
import 'package:ecommerce_app_ui/widgets/item/item_linear_women_category_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'detail_category_page_children.dart';

class DetailCategoryPage extends StatelessWidget {
  const DetailCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: SizedBox(
          height: 680.0,
          child: Obx(
            () => controller.isChangeLayout.value
                ? GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                          childAspectRatio: 0.58,
                    ),
                    itemBuilder: (context, index) {
                      return const ItemGridWomenCategoryWidget();
                    })
                : ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ItemLinearWomenCategoryWidget();
                    }),
          )),
    );
  }
}
