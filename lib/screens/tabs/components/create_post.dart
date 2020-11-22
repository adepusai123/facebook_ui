import 'package:facebook_ui/components/chip_outline.dart';
import 'package:facebook_ui/components/profile_circle.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leadingWidth: 200,
          leading: Container(
            width: 150,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Create Post",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: () {
                  print('Post Message clicked');
                },
                child: Text(
                  "POST",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  ProfileCircleComponent(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sai Kumar Adepu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ChipOutLine(
                        label: "Public",
                        bgColor: Colors.white,
                        icon: Icons.public,
                      )
                    ],
                  )
                ],
              ),
              TextField(
                maxLines: 20,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "What's on your mind?",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
