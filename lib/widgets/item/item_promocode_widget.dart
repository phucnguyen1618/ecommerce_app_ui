import 'package:flutter/material.dart';

class ItemPromocodeWidget extends StatelessWidget {
  const ItemPromocodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: 100.0,
      margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            ),
            child: Image.asset(
              'assets/images/image_03.jpeg',
              fit: BoxFit.cover,
              width: 100.0,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Personal offer',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              Text(
                'mypromocode2021',
                style: TextStyle(color: Colors.black, fontSize: 14.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '6 days remaining',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
