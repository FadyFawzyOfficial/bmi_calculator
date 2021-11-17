import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';
import '../widgets/round_icon_button.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onPress: () => setState(() => selectedGender = Gender.male),
                ),
                ReusableCard(
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () => setState(() => selectedGender = Gender.female),
                ),
              ],
            ),
          ),
          ReusableCard(
            color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$height',
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: kAccentColor,
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 32),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    onChanged: (newValue) => setState(
                      () => height = newValue.round(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        '$weight',
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(
                              () => weight--,
                            ),
                          ),
                          SizedBox(width: 16),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(
                              () => weight++,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        '$age',
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(
                              () => age--,
                            ),
                          ),
                          SizedBox(width: 16),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(
                              () => age++,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            lable: 'CALCULATE',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultsPage()),
            ),
          ),
        ],
      ),
    );
  }
}
