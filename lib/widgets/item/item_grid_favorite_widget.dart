import 'package:ecommerce_app_ui/widgets/button/button_add_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemGridFavoriteWidget extends StatelessWidget {
  const ItemGridFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(
          16.0,
        ),
        child: Stack(
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
                const Positioned(
                  bottom: 28.0,
                  left: 4.0,
                  right: 0.0,
                  child: Text(
                    'Sorry, this item is currently sold out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: ButtonAddCart(),
                ),
              ],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                color: Colors.transparent,
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                        initialRating: 5.0,
                        itemCount: 5,
                        itemSize: 18.0,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: 'Color: ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Orange',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                )
                              ]),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: 'Size: ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                              children: [
                                TextSpan(
                                  text: 'S',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text(
                      '90.000',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 8.0,
              right: 8.0,
              child: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
