import 'package:flutter/material.dart';

const Color cardColor = Colors.white60;

class CardIconGender extends StatelessWidget {
  CardIconGender({required this.cardText, this.cardIcon});
  final String cardText;
  final IconData? cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 90.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          cardText,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
