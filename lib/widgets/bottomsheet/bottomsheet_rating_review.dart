import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:ecommerce_app_ui/widgets/input/text_input_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BottomSheetRatingReview extends StatelessWidget {
  const BottomSheetRatingReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 880.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                width: 60.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF979797),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              const Text(
                'What is you rate ?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              RatingBar.builder(
                  initialRating: 0,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star_outline,
                      color: Colors.yellow,
                    );
                  },
                  onRatingUpdate: (value) {}),
              const SizedBox(
                height: 24.0,
              ),
              const Text(
                'Please share your opinion\n about the product',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const TextInputReview(),
              const SizedBox(
                height: 16.0,
              ),
              CustomButtonWidget(content: 'SEND REVIEW', callback: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
