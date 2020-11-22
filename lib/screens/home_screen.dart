import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/screens/tabs/group_tab_screen.dart';
import 'package:facebook_ui/screens/tabs/home_tab_screen.dart';
import 'package:facebook_ui/screens/tabs/menu_tab_screen.dart';
import 'package:facebook_ui/screens/tabs/notification_tab_screen.dart';
import 'package:facebook_ui/screens/tabs/watch_tab_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool isSearchActive = false;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 120,
            leading: GestureDetector(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Text(
                  'Facebook',
                  style: TextStyle(
                    color: Contansts.darkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            title: isSearchActive
                ? TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                    ),
                  )
                : Text(""),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSearchActive = !isSearchActive;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Contansts.darkColor,
                    ),
                  ),
                ),
              )
            ],
            backgroundColor: Colors.white,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home_filled,
                  color: Contansts.darkColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_circle_fill_rounded,
                  color: Contansts.darkColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group_work_rounded,
                  color: Contansts.darkColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_rounded,
                  color: Contansts.darkColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                  color: Contansts.darkColor,
                ),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              HomeTabScreen(),
              WatchTabScreen(),
              GroupTabScreen(),
              NotificationTabScreen(),
              MenuTabScreen()
            ],
          ),
        ),
      ),
    );
  }
}
