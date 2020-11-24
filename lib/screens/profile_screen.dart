import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:facebook_ui/components/full_width_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.37,
                padding: EdgeInsets.all(10),
                child: WallProfileComponent(),
              ),
              Text(
                "Sai Kumar Adepu",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sub text here",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Divider(),
              IconTextWidget(
                icon: EvaIcons.heart,
                text: "Single",
              ),
              IconTextWidget(
                icon: Icons.more_horiz,
                text: "See Your About Info",
              ),
              FullWidthButton(
                label: "Edit Public Details",
                press: () {},
                color: Colors.blue[50],
                btnHeight: 34,
                labelColor: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              FriendsGridWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class FriendsGridWidget extends StatelessWidget {
  const FriendsGridWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Text(
                    "Friends",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "1000 friends",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Find Friends",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          height: 200,
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.grey[600],
            size: 30,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
          ),
        )
      ],
    );
  }
}

class WallProfileComponent extends StatelessWidget {
  const WallProfileComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sai_img.jpeg"),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.photo_camera_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 6,
                  ),
                  borderRadius: BorderRadius.circular(120),
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/sai_img.jpeg"),
                ),
              ),
              Positioned(
                  bottom: 18,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.photo_camera_rounded,
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
          left: (MediaQuery.of(context).size.width / 2) - 120,
          top: 110,
        ),
      ],
    );
  }
}
