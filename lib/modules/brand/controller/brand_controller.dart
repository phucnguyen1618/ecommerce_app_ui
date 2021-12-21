import 'package:ecommerce_app_ui/data/database/local_database.dart';
import 'package:ecommerce_app_ui/data/models/brand.dart';
import 'package:get/get.dart';

class BrandController extends GetxController {
  var dataBrandList = LocalDatabase.brandList.obs;

  List<Brand> listDataAdded = [];

  onItemBrandClicked(index) {
    dataBrandList[index].isClicked = !dataBrandList[index].isClicked;
    listDataAdded.add(dataBrandList[index]);
  }

  onBack() {
    Get.back(result: listDataAdded);
  }
}
