import 'package:ecommerce_app_ui/modules/container/controller/main_container_controller.dart';
import 'package:get/get.dart';

class MainContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainContainerController>(() => MainContainerController());
  }

}