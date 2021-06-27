import 'package:flutter/material.dart';

class WeightAgeCard extends StatelessWidget {
  final String cardText;
  final int cardValue;

  int addTo(int value) {
    return value++;
  }

  int removeFrom(int value) {
    return value--;
  }

  WeightAgeCard({required this.cardText, required this.cardValue});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cardText.toString().toUpperCase(),
          style: TextStyle(fontSize: 25.0),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          cardValue.toString(),
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Color(0xFFF07F81),
              ),
              backgroundColor: Colors.white,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.remove,
                color: Color(0xFFF07F81),
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
