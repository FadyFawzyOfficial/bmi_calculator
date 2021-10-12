import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onPress: () => setState(() => selectedGender = Gender.male),
                ),
                ReusableCard(
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () => setState(() => selectedGender = Gender.female),
                ),
              ],
            ),
          ),
          ReusableCard(),
          Expanded(
            child: Row(
              children: [
                ReusableCard(),
                ReusableCard(),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 16),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
