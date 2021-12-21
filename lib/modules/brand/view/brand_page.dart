import 'dart:developer';

import 'package:ecommerce_app_ui/data/models/brand.dart';
import 'package:ecommerce_app_ui/modules/brand/controller/brand_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/search/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'brand_page_children.dart';

class BrandPage extends GetView<BrandController> {
  const BrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => controller.onBack(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Brand',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
      ),
      body: Column(
        children: [
          const SearchBarWidget(),
          buildListBrand(controller.dataBrandList),
        ],
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Expanded(
                child: buildButtonDiscard(),
              ),
              Expanded(
                child: CustomButtonWidget(
                    content: 'Apply',
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
