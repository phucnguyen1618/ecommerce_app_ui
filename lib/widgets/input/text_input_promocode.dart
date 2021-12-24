import 'package:ecommerce_app_ui/modules/bag/controller/bag_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputPromocode extends StatelessWidget {
  const TextInputPromocode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 12.0,),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const TextField(
            scrollPadding: EdgeInsets.all(8.0),
            decoration: InputDecoration(
              constraints: BoxConstraints.expand(height: 36.0, width: 343.0),
              hintText: 'Enter your promo code',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
              border: InputBorder.none,
            ),
          ),
        ),
        const Positioned(
          right: 0.0,
          child: CircleAvatar(
            backgroundColor: Color(0xFF222222),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
