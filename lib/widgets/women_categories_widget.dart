import 'package:flutter/material.dart';

class WomenCategoriesWidget extends StatelessWidget {
  const WomenCategoriesWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          const SizedBox(
            width: 32.0,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
