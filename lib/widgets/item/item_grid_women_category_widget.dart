import 'package:ecommerce_app_ui/modules/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ItemGridWomenCategoryWidget extends StatelessWidget {
  const ItemGridWomenCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController controller = Get.find<ShopController>();
    return GestureDetector(
      onTap: () => controller.onItemProductClicked(),
      child: Container(
        margin: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ClipRRect(
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
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
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
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(bottom: 8.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                      itemSize: 18.0,
                      itemCount: 5,
                      initialRating: 3,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      },
                      onRatingUpdate: (value) {}),
                  const SizedBox(
                    height: 3.0,
                  ),
                  const Text(
                    'Mango',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  const Text(
                    'T-Shirt SPANISH',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  const Text(
                    '90.000 vnd',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
