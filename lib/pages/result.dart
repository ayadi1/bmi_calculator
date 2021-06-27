import 'package:flutter/material.dart';
import '../models/myrcard.dart';

class ResultPAge extends StatelessWidget {
  String msg = '';
  String bmi = '';
  String inter = '';

  @override
  Widget build(BuildContext context) {
    Map data = {"data": ModalRoute.of(context)!.settings.arguments};
    msg = data['data']['msg'].toString();
    bmi = data['data']['bmi'].toString();
    inter = data['data']['inter'].toString();
    print(data);
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  child: const Text(
                    'Your result',
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: MyRCard(
                color: Colors.white70,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        msg.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 30.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmi.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      Text(
                        inter,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                width: double.infinity,
                height: 80.0,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(color: Color(0xFFF07F81), fontSize: 40.0),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
