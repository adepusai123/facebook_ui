import 'package:facebook_ui/components/profile_circle.dart';
import 'package:facebook_ui/components/route_animation.dart';
import 'package:flutter/material.dart';

import 'create_post.dart';

class ProfileStatusWidget extends StatelessWidget {
  const ProfileStatusWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        ProfileCircleComponent(),
        InkWell(
          child: SizedBox(
            height: size.height * 0.08,
            width: size.width * 0.8,
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400]),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text('Write Something here...'),
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
              createRouteAnimation(CreatePost()),
            );
          },
        ),
      ],
    );
  }
}
