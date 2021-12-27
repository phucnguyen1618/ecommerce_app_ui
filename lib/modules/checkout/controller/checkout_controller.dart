import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {

  onBack() {
    Get.back();
  }

  onSubmitOrder(){
    Get.toNamed(Routes.PAYMENT);
  }
}