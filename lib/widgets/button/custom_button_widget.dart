import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.content, required this.callback}) : super(key: key);

  final String content;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: MaterialButton(
        onPressed: callback,
        child: Text(
          content,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
}
