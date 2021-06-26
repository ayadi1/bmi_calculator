import 'package:flutter/material.dart';

class CardIconGender extends StatelessWidget {
  CardIconGender({required this.CardText, this.CardIcon});
  final String CardText;
  final IconData? CardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          CardIcon,
          size: 90.0,
          color: Colors.white60,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          CardText,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
