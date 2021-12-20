import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetSortBy extends StatelessWidget {
  const BottomSheetSortBy({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      height: 350.0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: const Color(0xFF979797),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          const Text(
            'Sort By',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Obx(
            () => Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.sortByList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => Container(
                        color: controller.sortByList[index].isClicked ? Colors.red : null,
                        child: ListTile(
                          onTap: () => controller.onItemSortByClicked(index),
                          title: Text(
                            controller.sortByList[index].content,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: controller.sortByList[index].isClicked
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
