import 'dart:developer';

import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/custom/custom_color_widget.dart';
import 'package:ecommerce_app_ui/widgets/custom/custom_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'filters_page_children.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColumnPriceRange(),
            buildColumnColors(),
            buildColumnSize(),
            buildColumnCategory(),
            buildColumnBrand(),
          ],
        ),
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
        )
      ],
    );
  }
}
