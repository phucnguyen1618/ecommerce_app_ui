import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'profile_page_children.dart';

class ProfilePage extends GetView<ProfileContainerController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'My profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildRowInforPerson(),
            buildMenuSettingProfile(controller),
          ],
        ),
      ),
    );
  }
}
