import 'package:flutter/material.dart';
import 'pages/inputpage.dart';
import 'pages/result.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: const Color(0xffE8665D),
      scaffoldBackgroundColor: const Color(0xffE8665D),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    home: InputPage(),
  ));
}
