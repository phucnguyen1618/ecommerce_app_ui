part of 'detail_product_page.dart';

extension DetailProductChildren on DetailProductPage {
  PreferredSizeWidget buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text(
        'Short dress',
        style: TextStyle(color: Colors.black, fontSize: 16.0),
      ),
      leading: GestureDetector(
        onTap: () => controller.onBack(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
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
            children: [
              Obx(
                () => ChooseSizeAndColorWidget(
                  content: 'Size',
                  isChoose: controller.isSizeProductClicked.value,
                  callback: () => controller.onChooseSizeProductClicked(),
                ),
              ),
              Obx(
                () => ChooseSizeAndColorWidget(
                  content: 'Black',
                  callback: () => controller.onChooseSizeProductClicked(),
                  isChoose: controller.isColorProductClicked.value,
                ),
              ),
              const Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 32.0,
          ),
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
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Shipping info',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Support',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          buildColumnListSimilarProduct(),
        ],
      ),
    );
  }

  Widget buildColumnListSimilarProduct() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'You can also like this',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '12 items',
                style: TextStyle(color: Color(0xFF9B9B9B), fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(
            height: 340.0,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ItemGridWomenCategoryWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageSlider(List<String> imageList) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 220.0,
      child: Image.asset('assets/images/image_01.jpg'),
    );
  }
}
