import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  final String label;
  final Function press;
  final Color color;
  final Color labelColor;
  final double btnHeight;
  const FullWidthButton({
    Key key,
    this.label,
    this.press,
    this.color = Colors.blue,
    this.labelColor = Colors.white,
    this.btnHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: this.btnHeight != null ? this.btnHeight : size.height * 0.05,
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
            color: labelColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
