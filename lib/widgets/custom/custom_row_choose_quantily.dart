import 'package:flutter/material.dart';

class CustomRowChooseQuantily extends StatelessWidget {
  const CustomRowChooseQuantily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 3.0,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
          ),
          const Text(
            '1',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            elevation: 3.0,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
