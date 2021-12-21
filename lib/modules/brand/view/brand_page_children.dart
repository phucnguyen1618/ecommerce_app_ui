part of 'brand_page.dart';

extension BrandPageChildren on BrandPage {
  Widget buildButtonDiscard() {
    return Card(
      margin: const EdgeInsets.only(right: 16.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          log('Button Discard Clicked');
        },
        child: const Text(
          'Discard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget buildListBrand(List<Brand> dataList) {
    return Obx(
      () => Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  dataList[index].name,
                  style: TextStyle(
                      color: dataList[index].isClicked
                          ? Colors.red
                          : Colors.black,
                      fontSize: 14.0),
                ),
                trailing: Checkbox(
                    activeColor: Colors.red,
                    checkColor: Colors.white,
                    value: dataList[index].isClicked,
                    onChanged: (isChecked) {
                      controller.onItemBrandClicked(index);
                    }),
              );
            }),
      ),
    );
  }
}
