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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              )
            ],
          ),
        ),
      ),
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
          left: (MediaQuery.of(context).size.width / 2) - 110,
          top: 110,
        ),
      ],
    );
  }
}
