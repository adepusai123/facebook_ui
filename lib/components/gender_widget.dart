import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final List genders = ["Male", "Female"];
  final String select;
  final Function onChange;
  final String title;
  final int index;
  CustomRadioButton({
    Key key,
    this.select,
    this.onChange,
    this.title,
    this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: Colors.white,
          value: genders[index],
          groupValue: select,
          onChanged: onChange,
        ),
        Text(title)
      ],
    );
  }
}
