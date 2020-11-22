import 'package:flutter/material.dart';

class ProfileStatusWidget extends StatelessWidget {
  const ProfileStatusWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.blue[400],
          ),
          child: Icon(
            Icons.account_circle_outlined,
            size: 40,
          ),
        ),
        InkWell(
          child: SizedBox(
            height: size.height * 0.08,
            width: size.width * 0.8,
            child: Container(
              margin: EdgeInsets.all(14),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text('Write Something here...'),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
