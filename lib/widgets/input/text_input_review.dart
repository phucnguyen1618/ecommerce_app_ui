import 'package:flutter/material.dart';

class TextInputReview extends StatelessWidget {
  const TextInputReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 327.0,
      height: 148.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Your review...',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
