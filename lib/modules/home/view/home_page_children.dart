part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget headerHomePage(Size size) {
    return SizedBox(
        width: size.width,
        height: 560,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/image_04.jpeg',
              width: size.width,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 354.0,
              left: 16.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fashion\nsale',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    alignment: Alignment.center,
                    width: 160.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Text(
                      'Check',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildListNewProduct() {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      height: 280.0,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ItemNewProductWidget();
          }),
    );
  }
}
