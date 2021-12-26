import 'dart:ui';

import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileContainerController controller = Get.find<ProfileContainerController>();
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.all(16.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 180.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Order No1947034',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '05-12-2019',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Tracking number: ',
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  children: [
                    TextSpan(
                      text: 'IW3475453455',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Quantily: ',
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        children: [
                          TextSpan(
                            text: '3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Total Amount: ',
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        children: [
                          TextSpan(
                            text: '112.000 vnd',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(color: Colors.black, width: 1.0),
                    ),
                    onPressed: () => controller.onItemOrderClicked(),
                    child: const Text(
                      'Details',
                      style: TextStyle(color: Color(0xFF222222), fontSize: 16.0),
                    ),
                  ),
                  const Text(
                    'Delivered',
                    style: TextStyle(
                      color: Color(0xFF2AA952),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
