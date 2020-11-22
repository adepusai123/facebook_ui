import 'package:flutter/material.dart';

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
          DefaultTabController(
            length: 3,
            child: TabBar(
              onTap: (tabIndex) {
                print(tabIndex);
              },
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(2),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.red,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.photo_album_rounded,
                    color: Colors.green,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            height: 2,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
