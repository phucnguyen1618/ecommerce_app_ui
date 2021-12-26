import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_rating_review.dart';
import 'package:get/get.dart';

class RatingReviewController extends GetxController {

  onWriteReviewClicked() {
    Get.bottomSheet(const BottomSheetRatingReview());
  }

}