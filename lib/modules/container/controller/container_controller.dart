import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {

  onMoveToPage(int index){
    switch(index){
      case 0:
        Get.toNamed(Routes.HOME);
        break;
      case 1:
        Get.toNamed(Routes.SHOP);
        break;
      case 2:
        Get.toNamed(Routes.BAG);
        break;
      case 3:
        Get.toNamed(Routes.FAVORITES);
        break;
      case 4:
        Get.toNamed(Routes.PROFILE);
        break;
    }
  }
}