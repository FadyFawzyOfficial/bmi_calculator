import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
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
                  'Normal',
                  style: kResultTextStyle,
                ),
                Text(
                  '18.3',
                  style: kBMITextStyle,
                ),
                Text(
                  'Your BMI results is quite low, you should eat more!',
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
