import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/sai_img.jpeg"),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/sai_img.jpeg"),
                ),
                left: (MediaQuery.of(context).size.width / 2) - 110,
                top: 110,
              )
            ],
          ),
        ),
      ),
    );
  }
}
