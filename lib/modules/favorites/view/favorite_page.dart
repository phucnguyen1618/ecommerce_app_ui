import 'package:ecommerce_app_ui/modules/favorites/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'favorite_page_children.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
    );
  }
}
