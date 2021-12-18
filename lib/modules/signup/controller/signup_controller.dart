import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {

  onSignUp() {
    Get.toNamed(Routes.LOGIN);
  }
}