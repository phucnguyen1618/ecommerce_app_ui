import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ItemLinearWomenCategoryWidget extends StatelessWidget {
  const ItemLinearWomenCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return GestureDetector(
      onTap: () => controller.onItemProductClicked(),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(bottom: 22.0, left: 16.0, right: 16.0, top: 16.0),
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
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pullover',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
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
                      RatingBar.builder(
                          initialRating: 3,
                          itemSize: 18.0,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            );
                          },
                          onRatingUpdate: (value) {}),
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
          Positioned(
            bottom: 0.0,
            right: 16.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              elevation: 3.0,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
