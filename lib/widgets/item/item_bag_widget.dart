import 'package:ecommerce_app_ui/widgets/card/item_bag_card.dart';
import 'package:flutter/material.dart';

class ItemBagWidget extends StatelessWidget {
  const ItemBagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        ItemBagCard(),
        Positioned(
          top: 8.0,
          right: 12.0,
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
