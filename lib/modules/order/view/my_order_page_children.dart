part of 'my_order_page.dart';

extension MyOrderPageChildren on MyOrderPage {
  PreferredSizeWidget buildHeaderMyOrder() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xFFF9F9F9),
      leading: GestureDetector(
        onTap: () => controller.onBack(0),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
          child: const Text(
            'My Orders',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBodyMyOrder() {
    return const DefaultTabController(
      length: 3,
      child: TabBar(
        indicatorColor: Colors.red,
        labelColor: Color(0xFF222222),
        tabs: [
          Tab(
            text: 'Delivered',
          ),
          Tab(
            text: 'Processing',
          ),
          Tab(
            text: 'Cancelled',
          ),
        ],
      ),
    );
  }
}
