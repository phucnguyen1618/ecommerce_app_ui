import 'package:ecommerce_app_ui/widgets/item/item_grid_women_category_widget.dart';
import 'package:flutter/material.dart';

class ItemNewProductWidget extends StatelessWidget {
  const ItemNewProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 24.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'New',
                      style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "You've never seen it before!",
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ],
                ),
                const Text(
                  'View all',
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 336.0,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const ItemGridWomenCategoryWidget();
                }),
          ),
        ],
      ),
    );
  }
}
