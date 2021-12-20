import 'package:ecommerce_app_ui/data/models/brand.dart';
import 'package:get/get.dart';

class BrandController extends GetxController {
  var dataBrandList = [
    Brand('adidas', false),
    Brand('adidas Originals', true),
    Brand('Blend', false),
    Brand('Boutique Moschino', false),
    Brand('Champion', false),
    Brand('Diesel', false),
    Brand('Jack & Jones', true),
    Brand('Naf Naf', false),
    Brand('Red Valentino', false),
    Brand('s.Oliver', true),
  ].obs;

  List<Brand> listDataAdded = [];

  onItemBrandClicked(index) {
    dataBrandList[index].isClicked = !dataBrandList[index].isClicked;
    listDataAdded.add(dataBrandList[index]);
  }

  onBack() {
    Get.back(result: listDataAdded);
  }
}
