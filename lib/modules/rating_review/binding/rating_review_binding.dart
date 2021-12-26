import 'package:ecommerce_app_ui/modules/rating_review/controller/rating_review_controller.dart';
import 'package:get/get.dart';

class RatingReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RatingReviewController>(() => RatingReviewController());
  }

}