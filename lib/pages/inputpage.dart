import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../models/myrcard.dart';
import '../models/cardIconGender.dart';
import '../models/roundIconButton.dart';

const Color activeCardColor = Colors.white70;
const Color inactiveCardColor = Colors.white30;
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double _humanHeight = 0.0;
  int humanAge = 30;

  int humanWeight = 50;

  Gender? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
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
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    child: Center(
                      child: CardIconGender(
                        cardText: 'MALE',
                        cardIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyRCard(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    child: Center(
                      child: CardIconGender(
                        cardText: 'FEMALE',
                        cardIcon: FontAwesomeIcons.venus,
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${_humanHeight.toInt()}',
                          style: const TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.bold),
                        ),
                        const Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFFF07F81),
                        thumbColor: Colors.white,
                      ),
                      child: Slider(
                        value: _humanHeight,
                        min: 0.0,
                        max: 300,
                        onChanged: (newHeight) {
                          setState(() {
                            _humanHeight = newHeight;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyRCard(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          humanWeight.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onTap: () {
                                setState(() {
                                  humanWeight++;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onTap: () {
                                setState(() {
                                  humanWeight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyRCard(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          humanAge.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onTap: () {
                                setState(() {
                                  humanAge++;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onTap: () {
                                setState(() {
                                  humanAge--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              double calculator(int humanHeight, int humanWeight) {
                double result = humanWeight / pow(humanHeight / 100, 2);
                return result;
              }

              if (gender == Gender.female || gender == Gender.male) {
                double finalResult =
                    calculator(_humanHeight.toInt(), humanWeight);
                String msg(double finalResult) {
                  if (finalResult >= 25) {
                    return 'Overweight';
                  } else if (finalResult > 18.5) {
                    return 'Normal';
                  }
                  return 'Underweight';
                }

                String inter(double finalResult) {
                  if (finalResult >= 25) {
                    return 'Overweight';
                  } else if (finalResult > 18.5) {
                    return 'Normal';
                  }
                  return 'Underweight';
                }

                Navigator.pushNamed(context, '/result', arguments: {
                  'bmi': finalResult.toStringAsFixed(1),
                  'msg': msg(finalResult),
                  'inter': inter(finalResult),
                });
              }
            },
            child: Container(
              height: 80.0,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: const Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(color: Color(0xFFF07F81), fontSize: 40.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
