import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/input/text_input_promocode.dart';
import 'package:flutter/material.dart';

class BottomSheetPromocode extends StatelessWidget {
  const BottomSheetPromocode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      height: 550.0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4.0, bottom: 12.0),
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: const Color(0xFF979797),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          const TextInputPromocode(),
          const Text(
            'Your Promo Codes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
