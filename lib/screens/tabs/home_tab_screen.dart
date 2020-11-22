import 'package:flutter/material.dart';

import 'components/chat_rooms.dart';
import 'components/live_photo_room.dart';
import 'components/profile_status.dart';

class HomeTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProfileStatusWidget(),
          Divider(
            color: Colors.grey,
            height: 2,
          ),
          LivePhotoRoomWidget(),
          Divider(
            color: Colors.grey[300],
            height: 3,
            thickness: 5,
          ),
          ChatRoomsWidget(),
          Divider(
            color: Colors.grey[300],
            height: 3,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
