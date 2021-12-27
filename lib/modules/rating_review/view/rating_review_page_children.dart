part of 'rating_review_page.dart';

extension RetingReviewPageChildren on RatingReviewPage {
  PreferredSizeWidget buildAppBarRatingReview() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xFFF9F9F9),
      leading: GestureDetector(
        onTap: () => controller.onBack(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Rating&Reviews',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRowStatisticalRating() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(
                    text: '4.3',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 43.0,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: '\n23 ratings',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '8 reviews',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 135.0,
                  height: 21.0,
                  child: Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const Text(
                        'With photo',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
