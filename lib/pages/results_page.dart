import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interperation;

  const ResultsPage({
    @required this.result,
    @required this.bmi,
    @required this.interperation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ReusableCard(
            color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  result.toUpperCase(),
                  style: kResultTextStyle,
                ),
                Text(
                  bmi,
                  style: kBMITextStyle,
                ),
                Text(
                  interperation,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
          BottomButton(
            lable: 'RE-CALCULATE',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
