import 'package:ecommerce_app_ui/widgets/button/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetPaymentMethod extends StatelessWidget {
  const BottomSheetPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 4.0, bottom: 12.0),
              width: 60.0,
              height: 5.0,
              decoration: BoxDecoration(
                color: const Color(0xFF979797),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            const Text(
              'Add new card',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding:
                  const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'New on card',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.only(
                  left: 16.0, top: 12.0, bottom: 12.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Card number',
                  hintText: '5546 8205 3693 3947',
                  hintStyle:
                      const TextStyle(color: Colors.black, fontSize: 14.0),
                  border: InputBorder.none,
                  suffix: Container(
                    width: 32.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding:
                  const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Expiry Date',
                  hintText: '05/23',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding:
                  const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'CVV',
                  hintText: '567',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.help_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: false,
                    onChanged: (value) {
                    },
                  ),
                  const Text(
                    'Use as default payment method',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButtonWidget(content: 'ADD CARD', callback: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
