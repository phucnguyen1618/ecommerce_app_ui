import 'dart:ui';

import 'package:ecommerce_app_ui/modules/checkout/controller/checkout_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/card/shipping_address_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'checkout_page_children.dart';

class CheckOutPage extends GetView<CheckOutController> {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: buildAppBarCheckOut(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
        child: buildBodyCheckOut(),
      ),
      persistentFooterButtons: [
        buildFooterCheckOutOrder(),
      ],
    );
  }
}
