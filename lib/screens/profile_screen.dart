import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:facebook_ui/components/full_width_button.dart';
import 'package:facebook_ui/components/profile_circle.dart';
import 'package:facebook_ui/screens/tabs/components/chat_rooms.dart';
import 'package:facebook_ui/screens/tabs/components/list_photos.dart';
import 'package:facebook_ui/screens/tabs/components/live_photo_room.dart';
import 'package:facebook_ui/screens/tabs/components/user_post_card.dart';
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
        body: ListView(
          // shrinkWrap: true,
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
              textAlign: TextAlign.center,
            ),
            Text(
              "Sub text here",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
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
            FriendsGridWidget(),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Posts",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.tune),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      color: Colors.grey[200],
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.settings),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileCircleComponent(),
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "What's on your mind?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            LivePhotoRoomWidget(),
            Divider(
              thickness: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Photos, Life Events, Music etc.."),
            ),
            Divider(
              thickness: 6,
            ),
            UserPostCard(type: "image", data: "assets/images/sai_img.jpeg"),
          ],
        ),
      ),
    );
  }
}

class FriendsGridWidget extends StatelessWidget {
  final List<Map<String, String>> photos = [
    {
      "image":
          "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg",
      "name": "Nikky"
    },
    {
      "image":
          "https://img.etimg.com/thumb/msid-49920972,width-640,resizemode-4,imgsize-65301/kavin-mittal-hike-messenger-app.jpg",
      "name": "Vikky"
    },
    {
      "image":
          "https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.h1280.jpg",
      "name": "john"
    },
    {
      "image":
          "https://profiles.howard.edu/sites/profiles.howard.edu/files/Screen%20Shot%202017-10-11%20at%203.54.36%20PM.png",
      "name": "Albert"
    },
    {
      "image":
          "https://media.self.com/photos/57d89d20d3276fe232946ab3/master/w_1600%2Cc_limit/phone-beach-870.jpg",
      "name": "Goblins"
    },
    {
      "image":
          "https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg",
      "name": "Sophie"
    }
  ];

  FriendsGridWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFriendsHeading(),
        Container(
          height: 300,
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              photos.length,
              (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            photos[index]["image"],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        photos[index]["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
        FullWidthButton(
          label: "See All Friends",
          labelColor: Colors.black,
          btnHeight: 40,
          color: Colors.grey[200],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListPhotos();
                },
              ),
            );
          },
        )
      ],
    );
  }

  Row buildFriendsHeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
