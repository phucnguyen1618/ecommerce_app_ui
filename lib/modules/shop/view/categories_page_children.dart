part of 'categories_page.dart';

extension CategoriesPageChildren on CategoriesPage {

  Widget buildWomenCategoryWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WomenCategoriesWidget(
          name: 'New',
          image: 'assets/images/image_01.jpg',
        ),
        const WomenCategoriesWidget(
          name: 'Clothes',
          image: 'assets/images/image_02.jpg',
        ),
        const WomenCategoriesWidget(
          name: 'Shoes',
          image: 'assets/images/image_03.jpeg',
        ),
        const WomenCategoriesWidget(
          name: 'Accessories',
          image: 'assets/images/image_04.jpeg',
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButtonWidget(
              content: 'VIEW ALL ITEMS',
              callback: () {
                log('Clicked');
              }),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 24.0),
          child: Text(
            'Choose category',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.categoryList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.only(left: 30.0, right: 16.0),
                  title: Text(
                    controller.categoryList[index].toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                  subtitle: const Divider(
                    color: Colors.grey,
                  ),
                  onTap: () {
                    controller.onItemCategoryClicked('Phuc Nguyen');
                  },
                );
              }),
        ),
      ],
    );
  }
}