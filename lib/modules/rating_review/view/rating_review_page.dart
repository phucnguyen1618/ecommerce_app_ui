import 'package:ecommerce_app_ui/modules/rating_review/controller/rating_review_controller.dart';
import 'package:ecommerce_app_ui/widgets/item/item_rating_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'rating_review_page_children.dart';

class RatingReviewPage extends GetView<RatingReviewController> {
  const RatingReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: buildAppBarRatingReview(),
      body: Column(
        children: [
          buildRowStatisticalRating(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ItemRatingReviewWidget();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 180.0,
        height: 50.0,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          onPressed: () => controller.onWriteReviewClicked(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.edit, color: Colors.white,),
                SizedBox(width: 8.0,),
                Text(
                  'Write a review',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
