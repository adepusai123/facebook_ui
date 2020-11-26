import 'package:flutter/material.dart';

class UserPostCard extends StatelessWidget {
  const UserPostCard({
    Key key,
    this.type,
    this.data,
  }) : super(key: key);

  final String type;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      print('Selection on User name of post');
                    },
                    child: Text(
                      'Sai Kumar Adepu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      print('selection on post more info');
                    },
                    child: Icon(Icons.more_horiz),
                  ),
                )
              ],
            ),
            buildContentWidget(type, data),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "3 Comments",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Container buildContentWidget(type, data) {
    switch (type) {
      case "image":
        return Container(
          padding: EdgeInsets.all(10),
          child: Image.asset(data),
        );
        break;
      default:
        return Container(
          padding: EdgeInsets.all(10),
          child: Text(
            data,
            style: TextStyle(color: Colors.black),
          ),
        );
    }
  }
}
