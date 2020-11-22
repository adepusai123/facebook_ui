import 'package:flutter/material.dart';

class ChipOutLine extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color bgColor;
  const ChipOutLine({
    Key key,
    this.label,
    this.icon,
    this.bgColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: new Matrix4.identity()..scale(0.68),
      child: Chip(
        shape: StadiumBorder(side: BorderSide()),
        avatar: Icon(icon),
        backgroundColor: bgColor,
        label: Text(label),
      ),
    );
  }
}
