import 'package:ecommerce_app_ui/modules/bag/controller/bag_controller.dart';
import 'package:get/get.dart';

class BagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BagController>(() => BagController(),);
  }

}