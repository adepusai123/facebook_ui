import 'package:flutter/material.dart';

class ChatRoomsWidget extends StatefulWidget {
  const ChatRoomsWidget({
    Key key,
  }) : super(key: key);

  @override
  _ChatRoomsWidgetState createState() => _ChatRoomsWidgetState();
}

class _ChatRoomsWidgetState extends State<ChatRoomsWidget> {
  List<dynamic> rooms = [
    {"name": "SaiKumar Name"},
    {"name": "Private Name"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print("Room Index $index");
            },
            child: Container(
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]),
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.blue[400],
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    rooms[index]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          );
        },
        itemCount: rooms.length,
      ),
    );
  }
}
