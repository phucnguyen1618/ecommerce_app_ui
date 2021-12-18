import 'dart:developer';

import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forgot password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 60.0,),
            const Text(
              'Please enter your email address. You will receive a link to create a new password via email.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'demo.email@example.com',
                  errorText: 'Not a valid email address. Should be you@email.com',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            CustomButtonWidget(content: 'SEND', callback: () {
              log('Button Send Clicked');
            }),
          ],
        ),
      ),
    );
  }
}
