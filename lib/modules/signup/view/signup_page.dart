import 'dart:ui';

import 'package:ecommerce_app_ui/modules/signup/controller/signup_controller.dart';
import 'package:ecommerce_app_ui/widgets/button/button_social_widget.dart';
import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
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
              'Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
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
                  labelText: 'Name',
                  hintText: 'Mr.Muffin',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
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
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'demo.email@example.com',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
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
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => controller.onSignUp(),
              child: const Padding(
                padding: EdgeInsets.only(top: 16.0, right: 24.0, bottom: 32.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    )),
              ),
            ),
            CustomButtonWidget(
              content: 'SIGN UP',
              callback: () => controller.onSignUp(),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Or sign up with social account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    ButtonSocialWidget(
                      iconData: Icons.email,
                      color: Colors.redAccent,
                    ),
                    ButtonSocialWidget(
                      iconData: Icons.facebook,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
