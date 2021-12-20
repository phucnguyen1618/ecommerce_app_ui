part of 'detail_product_page.dart';

extension DetailProductChildren on DetailProductPage {
  PreferredSizeWidget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Short dress',
        style: TextStyle(color: Colors.black, fontSize: 16.0),
      ),
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.share,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget buildBodyInformationProduct() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'H&M',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '199.000 VND',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            'Short black dress',
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
          const RatingBarWidget(),
          const Text(
            'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
            style: TextStyle(color: Colors.black, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
