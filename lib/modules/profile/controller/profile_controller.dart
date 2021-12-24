import 'package:ecommerce_app_ui/locator.dart';
import 'package:ecommerce_app_ui/navigation_service.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  NavigationService navigationService = locator<NavigationService>();

  onSettingsClicked() {
    Get.toNamed(Routes.SETTINGS);
  }

  onMoveToMyOrderPage(){
    navigationService.navigateTo(Routes.MY_ORDER);
  }

}