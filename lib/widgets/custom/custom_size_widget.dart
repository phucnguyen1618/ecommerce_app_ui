import 'package:flutter/material.dart';

class CustomSizeWidget extends StatelessWidget {
  const CustomSizeWidget({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 40.0,
        height: 40.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            style: const TextStyle(color: Colors.black, fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
