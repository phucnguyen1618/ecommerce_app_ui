import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_promo_code.dart';
import 'package:get/get.dart';

class BagController extends GetxController {

  showBottomSheetPromoCode() {
    Get.bottomSheet(const BottomSheetPromocode());
  }
}