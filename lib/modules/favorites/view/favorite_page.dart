import 'package:ecommerce_app_ui/modules/favorites/controller/favorite_controller.dart';
import 'package:ecommerce_app_ui/widgets/card/women_category_card.dart';
import 'package:ecommerce_app_ui/widgets/item/item_grid_favorite_widget.dart';
import 'package:ecommerce_app_ui/widgets/item/item_linear_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'favorite_page_children.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  return const ItemGridFavoriteWidget();
                })
                : ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ItemLinearFavoriteWidget();
                }),
          )),
    );
  }
}
