import 'package:ecommerce_app_ui/modules/settings/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'settings_page_children.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFF9F9F9),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0,),
            const Text(
              'Personal information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildColumnPersonalInfor('Full name'),
            buildColumnPersonalInfor('Date of Birth'),
            const SizedBox(height: 32.0,),
            buildColumnChangePassword(),
            buildColumnNotification(),
          ],
        ),
      ),
    );
  }
}
