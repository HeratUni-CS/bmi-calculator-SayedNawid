import 'package:bmi_starting/constants.dart';
import 'package:bmi_starting/component/resuable_card.dart';
import 'package:flutter/material.dart';
import '../component/buttonButton.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTPAGE"),
        backgroundColor: inActiveCardColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultText!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        "Normal BMI Range : ",
                        style: kGrayBodytextStyle,
                      ),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: kBoddyTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBoddyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonButton(
            title: "RE-CALCULATOR",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
