import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemLinearFavoriteCard extends StatelessWidget {
  const ItemLinearFavoriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'assets/images/image_02.jpg',
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
                const Text(
                  'Mango',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
                const Text(
                  'Pullover',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: 'Color: ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                          children: [
                            TextSpan(
                              text: 'Orange',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: 'Size: ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                          children: [
                            TextSpan(
                              text: 'S',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "32.000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 32.0,
                    ),
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
                        onRatingUpdate: (value) {})
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
