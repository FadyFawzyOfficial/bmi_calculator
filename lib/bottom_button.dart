import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String lable;
  final Function onPressed;

  const BottomButton({
    @required this.lable,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(top: 16),
        color: kAccentColor,
        alignment: Alignment.center,
        child: Text(
          lable,
          style: kLargeButtonTextStyle,
        ),
      ),
      onTap: onPressed,
    );
  }
}
