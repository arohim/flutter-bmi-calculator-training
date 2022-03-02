import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;

  final Widget child;

  ReusableCard({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
