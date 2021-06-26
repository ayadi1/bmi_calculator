import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../models/myrcard.dart';
import '../models/cardIconGender.dart';

const Color cardColor = Color(0xFFF0A59E);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: HomeInputpage(),
    );
  }

  Container HomeInputpage() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyRCard(
                    color: cardColor,
                    child: Center(
                      child: CardIconGender(
                        CardText: 'MALE',
                        CardIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyRCard(
                    color: cardColor,
                    child: Center(
                      child: CardIconGender(
                        CardText: 'FEMALE',
                        CardIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyRCard(
              color: cardColor,
              child: Column(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyRCard(
                    color: cardColor,
                    child: Column(),
                  ),
                ),
                Expanded(
                  child: MyRCard(
                    color: cardColor,
                    child: Column(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
