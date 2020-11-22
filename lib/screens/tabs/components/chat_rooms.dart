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
    {"name": "SaiKumar Adepu", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
    {"name": "Private", "image": "assets/images/sai_image.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ChatRoom(room: rooms[index]);
        },
        itemCount: rooms.length,
      ),
    );
  }
}

class ChatRoom extends StatelessWidget {
  const ChatRoom({
    Key key,
    @required this.room,
  }) : super(key: key);

  final Map room;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        print("Room ${room['name']}");
      },
      child: Container(
        width: size.width * 0.18,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
        ),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.account_circle,
                color: Colors.blue[400],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              room['name'],
              style: TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
