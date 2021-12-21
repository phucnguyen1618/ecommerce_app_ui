import 'package:ecommerce_app_ui/modules/favorites/controller/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(() => FavoriteController());
  }
}
