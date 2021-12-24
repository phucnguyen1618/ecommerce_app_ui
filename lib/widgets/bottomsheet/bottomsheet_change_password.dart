import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetChangePassword extends StatelessWidget {
  const BottomSheetChangePassword({Key? key}) : super(key: key);

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
          const Text(
            'Password Change',
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
            margin: const EdgeInsets.only(top: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Old Password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                border: InputBorder.none,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Color(0xFF979797), fontSize: 16.0),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'New Password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Repeat New Password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                CustomButtonWidget(content: 'SAVE PASSWORD', callback: () {}),
          ),
        ],
      ),
    );
  }
}
