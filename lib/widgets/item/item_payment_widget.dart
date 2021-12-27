import 'package:ecommerce_app_ui/modules/payment/controller/payment_controller.dart';
import 'package:ecommerce_app_ui/widgets/card/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemPaymentWidget extends StatelessWidget {
  const ItemPaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentController controller = Get.find<PaymentController>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PaymentCard(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(() => Checkbox(
                activeColor: Colors.black,
                value: controller.isChoose.value,
                onChanged: (value) {
                  controller.chooseDefaultPaymentMethod(value!);
                },
              ),),
              const Text(
                'Use as default payment method',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
