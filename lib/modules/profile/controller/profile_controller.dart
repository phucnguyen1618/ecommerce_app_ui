import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  onSettingsClicked() {
    Get.toNamed(Routes.SETTINGS);
  }
}