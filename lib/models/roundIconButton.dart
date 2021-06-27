import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  RoundIconButton({required this.onTap, required this.icon});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
      onPressed: onTap,
      child: Icon(
        icon,
        color: Color(0xFFF07F81),
      ),
    );
  }
}
