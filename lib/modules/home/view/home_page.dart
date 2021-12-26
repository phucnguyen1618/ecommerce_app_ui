import 'package:ecommerce_app_ui/modules/home/controller/home_controller.dart';
import 'package:ecommerce_app_ui/widgets/item/item_new_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'home_page_children.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerHomePage(size),
            buildListNewProduct(),
          ],
        ),
      ),
    );
  }
}
