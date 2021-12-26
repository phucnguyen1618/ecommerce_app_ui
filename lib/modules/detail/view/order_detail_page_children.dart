part of 'order_detail_page.dart';

extension OrderDetailPageChildren on OrderDetailPage {
  Widget buildButtonReorder() {
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
          'Reorder',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget buildColumnOrderDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Order No1947034',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '05-12-2019',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Tracking number: ',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
                children: [
                  TextSpan(
                    text: 'IW3475453455',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Delivered',
              style: TextStyle(
                color: Color(0xFF2AA952),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          '3 items',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ItemOrderDetailWidget();
            }),
        buildColumnOrderInformation(),
      ],
    );
  }

  Widget buildColumnOrderInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0,),
        const Text(
          'Order information',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'Shipping Address: ',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              children: [
                TextSpan(
                  text:
                      '3 Newbridge Court, Chino Hills, CA 91709, United States',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'Payment method: ',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              children: [
                TextSpan(
                  text: '1243 2653 5876 3947',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'Delivery method: ',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              children: [
                TextSpan(
                  text: 'FedEx, 3 days, 15.000 vnd',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'Discount: ',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              children: [
                TextSpan(
                  text: '10%, Personal promo code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'Total Amount: ',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              children: [
                TextSpan(
                  text: '133.000 vnd',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
