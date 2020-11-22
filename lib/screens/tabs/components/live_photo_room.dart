import 'package:flutter/material.dart';

class LivePhotoRoomWidget extends StatelessWidget {
  const LivePhotoRoomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> tabs = [
      {"label": "Live", "icon": Icons.video_call, "color": Colors.red},
      {
        "label": "Photo",
        "icon": Icons.photo_album_rounded,
        "color": Colors.green
      },
      {"label": "Room", "icon": Icons.video_call, "color": Colors.purple},
    ];
    return DefaultTabController(
      length: 3,
      child: TabBar(
          labelStyle: TextStyle(color: Colors.black),
          onTap: (tabIndex) {
            print(tabIndex);
          },
          tabs: tabs
              .map(
                (e) => Tab(
                  child: Row(
                    children: [
                      Icon(
                        e['icon'],
                        color: e['color'],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        e['label'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}
