import 'package:ecommerce_app_ui/widgets/bottomsheet/bottomsheet_change_password.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  onChangePassword() {
    Get.bottomSheet(const BottomSheetChangePassword());
  }
}
