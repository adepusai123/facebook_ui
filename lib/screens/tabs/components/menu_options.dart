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
        child: Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.grey[300]),
          child: ExpansionPanelList(
            dividerColor: Colors.grey[300],
            elevation: 1,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: _data
                .map(
                  (e) => ExpansionPanel(
                    canTapOnHeader: true,
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
          ),
        ),
      ),
    );
  }
}
