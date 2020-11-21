import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  TabController controller;
  @override
  void initState() {
    super.initState();
    // controller = new TabController(vsync: null, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TabBar View',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back))
          ],
        ),
      ),
    );
  }
}
