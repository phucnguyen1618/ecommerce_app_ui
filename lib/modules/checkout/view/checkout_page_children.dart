part of 'checkout_page.dart';

extension CheckOutPageChildren on CheckOutPage {
  PreferredSizeWidget buildAppBarCheckOut() {
    return AppBar(
      backgroundColor: const Color(0xFFF9F9F9),
      title: const Text(
        'Checkout',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: GestureDetector(
          onTap: () => controller.onBack(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )),
    );
  }

  Widget buildBodyCheckOut() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Shipping address',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const ShippingAddressCard(),
        const SizedBox(
          height: 32.0,
        ),
        buildColumnPayment(),
        const SizedBox(
          height: 48.0,
        ),
        buildBodyDeliveryMethod(),
      ],
    );
  }

  Widget buildBodyDeliveryMethod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivery method',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: 100.0,
                height: 72.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: 100.0,
                height: 72.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: 100.0,
                height: 72.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildColumnPayment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Payment',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Change',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            '**** **** **** 3947',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
        ),
      ],
    );
  }

  Widget buildFooterCheckOutOrder() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Order',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              Text(
                '112.000 vnd',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Delivery',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              Text(
                '15.000 vnd',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Summary',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              Text(
                '127.000 vnd',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomButtonWidget(
            content: 'SUBMIT ORDER',
            callback: () => controller.onSubmitOrder(),
          ),
        ],
      ),
    );
  }
}
