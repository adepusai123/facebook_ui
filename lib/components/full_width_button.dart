import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  final String label;
  final Function press;
  final Color color;
  const FullWidthButton({
    Key key,
    this.label,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: FlatButton(
        onPressed: press,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
