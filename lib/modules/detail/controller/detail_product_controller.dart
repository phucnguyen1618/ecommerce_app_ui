import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_choose_size_product.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {

  var isSizeProductClicked = false.obs;
  var isColorProductClicked = false.obs;

  onChooseSizeProductClicked() {
    isSizeProductClicked.value = !isSizeProductClicked.value;
    Get.bottomSheet(const BottomSheetChooseSizeProduct());
  }

  onMoveToRatingReviewPage() {
    Get.toNamed(Routes.RATING_REVIEW);
  }

  onBack() {
    Get.back();
  }
}
