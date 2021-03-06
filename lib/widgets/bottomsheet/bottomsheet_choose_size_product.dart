import 'package:ecommerce_app_ui/widgets/button/button_choose_size_product_widget.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetChooseSizeProduct extends StatelessWidget {
  const BottomSheetChooseSizeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      height: 350.0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: const Color(0xFF979797),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          const Text(
            'Select size',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Wrap(
              direction: Axis.horizontal,
              children: const [
                ButtonChooseSizeProductWidget(content: 'XS'),
                ButtonChooseSizeProductWidget(content: 'S'),
                ButtonChooseSizeProductWidget(content: 'M'),
                ButtonChooseSizeProductWidget(content: 'L'),
                ButtonChooseSizeProductWidget(content: 'XL'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButtonWidget(content: 'ADD TO CART', callback: () {}),
          ),
        ],
      ),
    );
  }
}
