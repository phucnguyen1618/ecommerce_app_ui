import 'package:ecommerce_app_ui/modules/brand/controller/brand_controller.dart';
import 'package:get/get.dart';

class BrandBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrandController>(() => BrandController());
  }

}