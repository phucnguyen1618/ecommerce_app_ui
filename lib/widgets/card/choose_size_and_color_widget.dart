import 'package:flutter/material.dart';

class ChooseSizeAndColorWidget extends StatelessWidget {
  const ChooseSizeAndColorWidget(
      {Key? key,
      required this.content,
      required this.isChoose,
      required this.callback})
      : super(key: key);

  final String content;
  final bool isChoose;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(
            color: isChoose ? Colors.redAccent : Colors.black,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          width: 120.0,
          height: 48.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                content,
                style: const TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
