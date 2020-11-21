import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
  }) : super(key: key);

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
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
