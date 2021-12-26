import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:ecommerce_app_ui/widgets/item/item_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'my_order_page_children.dart';

class MyOrderPage extends GetView<ProfileContainerController> {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHeaderMyOrder(),
      body: Column(
        children: [
          buildBodyMyOrder(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const ItemOrderWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
