import 'package:flutter/material.dart';

class ButtonAddCart extends StatelessWidget {
  const ButtonAddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.red,
      child: Icon(
        Icons.shopping_bag,
        color: Colors.white,
      ),
    );
  }
}
