part of 'filters_page.dart';

extension FiltersPageChildren on FiltersPage {
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

  Widget buildColumnPriceRange() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0, bottom: 12.0, top: 16.0),
          child: Text(
            'Price range',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '78.000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '143.000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              const LinearProgressIndicator(
                value: 30.0,
                backgroundColor: Color(0xFF9B9B9B),
                color: Color(0xFFDB3022),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildColumnColors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0, bottom: 12.0, top: 16.0),
          child: Text(
            'Colors',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Row(
            children: const [
              CustomColorWidget(
                color: Color(0xFF020202),
              ),
              CustomColorWidget(color: Colors.white),
              CustomColorWidget(
                color: Color(0xFFB82222),
              ),
              CustomColorWidget(
                color: Color(0xFFBEA9A9),
              ),
              CustomColorWidget(
                color: Color(0xFFE2BB8D),
              ),
              CustomColorWidget(
                color: Color(0xFF151867),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildColumnSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0, bottom: 12.0, top: 16.0),
          child: Text(
            'Sizes',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Row(
            children: const [
              CustomSizeWidget(content: 'XS'),
              CustomSizeWidget(content: 'S'),
              CustomSizeWidget(content: 'M'),
              CustomSizeWidget(content: 'L'),
              CustomSizeWidget(content: 'XL'),
            ],
          ),
        )
      ],
    );
  }

  Widget buildColumnCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, bottom: 12.0, top: 16.0),
          child: Text(
            'Category',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.black),
                ),
                child: SizedBox(
                  width: 100.0,
                  height: 42.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'All',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.black),
                ),
                child: SizedBox(
                  width: 100.0,
                  height: 42.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Women',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.black),
                ),
                child: SizedBox(
                  width: 100.0,
                  height: 42.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Men',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.black),
                ),
                child: SizedBox(
                  width: 100.0,
                  height: 42.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Boys',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.black),
                ),
                child: SizedBox(
                  width: 100.0,
                  height: 42.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Girls',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildColumnBrand() {
    return ListTile(
      title: const Text(
        'Brand',
        style: TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'adidas Originals, Jack & Jones, s.Olivier',
        style: TextStyle(
          color: Color(0xFF9B9B9B),
          fontSize: 14.0,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
      ),
      onTap: () async {
        var result = await Get.toNamed(Routes.BRAND);
        log(result[0].name + "  " + result[0].isClicked.toString());
      },
    );
  }
}
