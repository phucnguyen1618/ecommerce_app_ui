import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_choose_size_product.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {

  onChooseSizeProductClicked() {
    Get.bottomSheet(const BottomSheetChooseSizeProduct());
  }
}
