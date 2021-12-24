import 'package:flutter/material.dart';

class ItemBagCard extends StatelessWidget {
  const ItemBagCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(bottom: 16.0, left: 8.0, right: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
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
              width: 120,
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
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
                  height: 16.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.0,
                      height: 40.0,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 48.0,),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "32.000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
