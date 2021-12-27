import 'package:ecommerce_app_ui/modules/checkout/controller/checkout_controller.dart';
import 'package:get/get.dart';

class CheckOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckOutController>(() => CheckOutController());
  }

}