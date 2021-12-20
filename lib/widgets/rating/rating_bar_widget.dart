import 'package:flutter/material.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        children: const [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star_outline,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
