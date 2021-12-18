import 'package:flutter/material.dart';

class ButtonSocialWidget extends StatelessWidget {
  const ButtonSocialWidget({
    Key? key,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Icon(
        iconData,
        color: color,
        size: 32.0,
      ),
    );
  }
}
