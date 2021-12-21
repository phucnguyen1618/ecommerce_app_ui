import 'package:ecommerce_app_ui/modules/detail/controller/detail_product_controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProductController>(() => DetailProductController());
  }
}
