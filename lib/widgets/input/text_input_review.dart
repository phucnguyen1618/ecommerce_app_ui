import 'dart:developer';

import 'package:flutter/material.dart';

class TextInputReview extends StatelessWidget {
  const TextInputReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
      child: SizedBox(
        width: 327.0,
        height: 148.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Your review...',
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            onChanged: (text){
              log(text);
            },
          ),
        ),
      ),
    );
  }
}
