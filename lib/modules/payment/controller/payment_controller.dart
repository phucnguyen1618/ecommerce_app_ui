import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_payment_method.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {

  var isChoose = false.obs;

  onBack() {
    Get.back();
  }

  onAddPaymentMethod() {
    Get.bottomSheet(const BottomSheetPaymentMethod());
  }

  chooseDefaultPaymentMethod(bool isChecked) {
    isChoose.value = isChecked;
  }
}