import 'package:facebook_ui/components/custom_input_text.dart';
import 'package:facebook_ui/components/date_picker.dart';
import 'package:facebook_ui/components/full_width_button.dart';
// import 'package:facebook_ui/components/gender_widget.dart';
import 'package:facebook_ui/components/password_field.dart';
import 'package:facebook_ui/screens/test_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

enum Genders { Male, Female }

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Genders gender = Genders.Male;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue[300],
                Contansts.darkColor,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create Facebook Account',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomInputField(
                label: 'First Name',
              ),
              CustomInputField(
                label: 'Last Name',
              ),
              CustomInputField(
                label: 'Mobile or Email',
              ),
              PasswordField(),
              DatepickerInput(),
              RadioListTile<Genders>(
                title: Text(
                  "Male",
                  style: TextStyle(color: Colors.white),
                ),
                value: Genders.Male,
                groupValue: gender,
                onChanged: (Genders val) {
                  setState(() {
                    gender = val;
                  });
                },
                activeColor: Colors.white,
                toggleable: true,
              ),
              RadioListTile<Genders>(
                title: Text(
                  "Female",
                  style: TextStyle(color: Colors.white),
                ),
                value: Genders.Female,
                groupValue: gender,
                onChanged: (Genders val) {
                  setState(() {
                    gender = val;
                  });
                },
                activeColor: Colors.white,
                toggleable: true,
              ),
              SizedBox(
                height: 15,
              ),
              FullWidthButton(
                label: "Sign up",
                color: Contansts.darkColor,
                press: () {},
              ),
              SizedBox(
                height: 10,
              ),
              FullWidthButton(
                label: "Back",
                color: Colors.blue[900],
                press: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
