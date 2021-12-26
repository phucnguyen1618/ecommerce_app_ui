import 'package:ecommerce_app_ui/widgets/card/item_rating_review_card.dart';
import 'package:flutter/material.dart';

class ItemRatingReviewWidget extends StatelessWidget {
  const ItemRatingReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      width: 327.0,
      height: 313.0,
      child: Stack(
        children: const [
          Positioned(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: 16.0,
            child: ItemRatingReviewCard(),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: CircleAvatar(
              child: Text('M'),
            ),
          ),
        ],
      ),
    );
  }
}
