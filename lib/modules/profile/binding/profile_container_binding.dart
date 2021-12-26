import 'package:ecommerce_app_ui/modules/profile/controller/profile_container_controller.dart';
import 'package:get/get.dart';

class ProfileContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileContainerController>(() => ProfileContainerController());
  }

}