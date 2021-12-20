import 'dart:developer';

import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/rating/rating_bar_widget.dart';
import 'package:flutter/material.dart';

part 'detail_product_children.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/image_03.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            buildBodyInformationProduct(),
          ],
        ),
      ),
      persistentFooterButtons: [
        CustomButtonWidget(
            content: 'ADD TO CART',
            callback: () {
              log('This product added to cart');
            })
      ],
    );
  }
}
