import 'package:ecommerce_app_ui/widgets/button/button_add_cart.dart';
import 'package:ecommerce_app_ui/widgets/card/item_linear_favorite_card.dart';
import 'package:flutter/material.dart';

class ItemLinearFavoriteWidget extends StatelessWidget {
  const ItemLinearFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: const [
          ItemLinearFavoriteCard(),
          Positioned(
            bottom: 0.0,
            right: 16.0,
            child: ButtonAddCart(),
          ),
          Positioned(
            top: 24.0,
            right: 24.0,
            child: Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
          Positioned(
              bottom: 0.0,
              left: 16.0,
              child: Text(
                'Sorry, this item is currently sold out',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              )),
        ],
      ),
    );
  }
}
