import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;

  ReusableCard({this.color = activeCardColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
