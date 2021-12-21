import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemGridWomenCategoryWidget extends StatelessWidget {
  const ItemGridWomenCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return GestureDetector(
      onTap: ()=> controller.onItemProductClicked(),
      child: Container(
        margin: const EdgeInsets.all(
          16.0,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  'assets/images/image_02.jpg',
                  fit: BoxFit.cover,
                  height: 200.0,
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const SizedBox(height: 3.0,),
                    const Text(
                      'Mango',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    const SizedBox(height: 3.0,),
                    const Text(
                      'T-Shirt SPANISH',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    const SizedBox(height: 3.0,),
                    const Text(
                      '90.000 vnd',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
