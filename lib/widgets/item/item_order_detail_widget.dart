import 'package:flutter/material.dart';

class ItemOrderDetailWidget extends StatelessWidget {
  const ItemOrderDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SizedBox(
        width: 343.0,
        height: 110.0,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              child: Image.asset(
                'assets/images/image_02.jpg',
                fit: BoxFit.cover,
                width: 110,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pullover',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  const Text(
                    'Mango',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Color: ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'Orange',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Size: ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'S',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Units: ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            children: [
                              TextSpan(
                                text: '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(width: 100.0,),
                      const Text(
                        "32.000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
