import 'package:flutter/material.dart';

import '../constants.dart';

const iconSize = 80.0;

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: 16),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
