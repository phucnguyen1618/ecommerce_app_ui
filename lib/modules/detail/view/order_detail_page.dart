import 'dart:developer';

import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/item/item_order_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'order_detail_page_children.dart';

class OrderDetailPage extends GetView<ProfileContainerController> {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        centerTitle: true,
        title: const Text(
          'Order Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        leading: GestureDetector(
          onTap: () => controller.onBack(1),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: buildColumnOrderDetail(),
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Expanded(
                child: buildButtonReorder(),
              ),
              Expanded(
                child: CustomButtonWidget(
                    content: 'Leave feedback',
                    callback: () {
                      log('Clicked');
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
