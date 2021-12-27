import 'package:ecommerce_app_ui/modules/shipping/controller/shipping_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ShippingAddressController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => controller.onBack(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Shipping Addresses',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return SizedBox();
      },),
    );
  }
}
