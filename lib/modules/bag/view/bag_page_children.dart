part of 'bag_page.dart';

extension BagPageChildren on BagPage {
  Widget buildHeaderBagPage() {
    return SafeArea(
      left: true,
      right: true,
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              'My Bag',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFooterTotalAndPromoCode() {
    return Container(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        color: const Color(0xFFF9F9F9),
        height: 200.0,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => controller.showBottomSheetPromoCode(),
              child: const TextInputPromocode(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Total amount: ',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  Text(
                    '124.000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomButtonWidget(
              content: 'CHECK OUT',
              callback: () {
                log('Clicked');
              },
            ),
          ],
        ));
  }
}
