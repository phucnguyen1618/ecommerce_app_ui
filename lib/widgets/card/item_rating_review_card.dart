import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemRatingReviewCard extends StatelessWidget {
  const ItemRatingReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 3.0,
      child: Container(
        width: 311.0,
        height: 297.0,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Helene Moore',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RatingBar.builder(
                    initialRating: 4,
                    itemCount: 5,
                    itemSize: 18,
                    itemBuilder: (context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    },
                    onRatingUpdate: (value) {}),
                const Text(
                  'June 5, 2019',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 110.0,
                height: 25.0,
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Helpful',
                        style:
                            TextStyle(fontSize: 14.0, color: Color(0xFF9B9B9B)),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
