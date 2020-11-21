import 'package:flutter/material.dart';
import 'dart:async';

import '../constants.dart';

class DatepickerInput extends StatefulWidget {
  const DatepickerInput({
    Key key,
  }) : super(key: key);

  @override
  _DatepickerInputState createState() => _DatepickerInputState();
}

class _DatepickerInputState extends State<DatepickerInput> {
  String pickedValue = '';
  TextEditingController dateController = new TextEditingController();
  Future selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime.now(),
    );
    if (picked != null) {
      setState(() => dateController.text = "$picked".split(" ")[0]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: dateController,
        decoration: InputDecoration(
          hintText: "Date of Birth",
          hintStyle: TextStyle(
            color: Colors.black26,
          ),
          icon: GestureDetector(
            onTap: selectDate,
            child: Icon(
              Icons.calendar_today,
              color: Contansts.darkColor,
            ),
          ),
        ),
      ),
    );
  }
}
