import 'dart:developer';

import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/kids_categories_widget.dart';
import '../../../widgets/men_categories_widget.dart';
import '../../../widgets/women_categories_widget.dart';

part 'categories_page_children.dart';

class CategoriesPage extends GetView<ShopController> {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
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
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TabBar(
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                ],
              ),
              Container(
                color: const Color(0xFFE5E5E5),
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  buildWomenCategoryWidget(),
                  const MenCategoriesWidget(),
                  const KidsCategoriesWidget(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
