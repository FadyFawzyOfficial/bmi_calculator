import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor(int gender) {
    if (gender == 1) if (maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else
      maleCardColor = inactiveCardColor;
    else if (femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else
      femaleCardColor = inactiveCardColor;
  }

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
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      color: maleCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                    onTap: () => setState(() => updateCardColor(1)),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      color: femaleCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                    onTap: () => setState(() => updateCardColor(2)),
                  ),
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
