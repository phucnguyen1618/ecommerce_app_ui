import 'package:flutter/material.dart';

class WomenCategoryCard extends StatelessWidget {
  const WomenCategoryCard({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.0,
      margin: const EdgeInsets.only(right: 12.0, top: 14.0, bottom: 14.0),
      decoration: BoxDecoration(
          color: const Color(0xFF222222), borderRadius: BorderRadius.circular(16.0),),
      padding: const EdgeInsets.all(8.0),
      child: Text(
        content,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
