import 'package:ecommerce_app_ui/modules/signup/view/signup_page.dart';
import 'package:ecommerce_app_ui/routes/app_pages.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.SIGNUP,
      getPages: routePages,
    );
  }
}
