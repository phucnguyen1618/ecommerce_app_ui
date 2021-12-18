import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  onLogin() {
    Get.toNamed(Routes.CONTAINER);
  }
}