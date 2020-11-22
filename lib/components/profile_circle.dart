import 'package:flutter/material.dart';

class ProfileCircleComponent extends StatelessWidget {
  const ProfileCircleComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey[400]),
          color: Colors.grey[400],
          image: DecorationImage(
            image: AssetImage("assets/images/sai_img.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
