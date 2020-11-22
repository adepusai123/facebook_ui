import 'package:flutter/material.dart';

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class MenuOptions extends StatefulWidget {
  const MenuOptions({
    Key key,
  }) : super(key: key);

  @override
  _MenuOptionsState createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  List<Item> _data = generateItems(8);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data
              .map(
                (e) => ExpansionPanel(
                  headerBuilder: (context, bool isExpanded) {
                    return ListTile(
                      title: Text(e.headerValue),
                    );
                  },
                  body: ListTile(
                    // title: Text(e.headerValue),
                    subtitle: Text(e.expandedValue),
                  ),
                  isExpanded: e.isExpanded,
                ),
              )
              .toList(),
          // [
          //   ExpansionPanel(
          //     headerBuilder: (context, bool isExpanded) {
          //       return ListTile(
          //         title: Text("Hello"),
          //       );
          //     },
          //     body: ListTile(
          //       title: Text("Hello"),
          //       subtitle: Text("Hiii this is sub"),
          //     ),
          //     isExpanded: false,
          //   )
          // ],
        ),
      ),
    );
  }
}
