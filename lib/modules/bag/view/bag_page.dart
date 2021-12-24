import 'dart:developer';

import 'package:ecommerce_app_ui/modules/bag/controller/bag_controller.dart';
import 'package:ecommerce_app_ui/modules/container/view/container_page.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/input/text_input_promocode.dart';
import 'package:ecommerce_app_ui/widgets/item/item_bag_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'bag_page_children.dart';

class BagPage extends GetView<BagController> {
  const BagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerPage(
      selectIndex: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeaderBagPage(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ItemBagWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          buildFooterTotalAndPromoCode(),
        ],
      ),
    );
  }
}
