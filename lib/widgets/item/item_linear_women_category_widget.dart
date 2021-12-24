import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemLinearWomenCategoryWidget extends StatelessWidget {
  const ItemLinearWomenCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return GestureDetector(
      onTap: () => controller.onItemProductClicked(),
      child: Container(
        alignment: Alignment.topRight,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              child: Image.asset(
                'assets/images/image_01.jpg',
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Pullover',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    'Mango',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
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
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    '51.000 vnd',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
