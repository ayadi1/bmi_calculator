import 'package:flutter/material.dart';

class MyRCard extends StatelessWidget {
  final Color? color;
  final Widget child;

  MyRCard({required this.color, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 300.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
