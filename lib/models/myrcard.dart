import 'package:flutter/material.dart';

class MyRCard extends StatelessWidget {
  final Color? color;
  final Widget child;
  final Function()? onTap;

  MyRCard({@required this.color, required this.child, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        height: 300.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
