import 'package:facebook_ui/components/profile_circle.dart';
import 'package:flutter/material.dart';

class MenuTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              print('Show Profile Page');
            },
            child: Row(
              children: [
                ProfileCircleComponent(),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sai Kumar Adepu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "See your profile",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
