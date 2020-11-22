import 'package:flutter/material.dart';

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.icon,
    this.isExpanded = false,
  });

  List<String> expandedValue;
  String headerValue;
  IconData icon;
  bool isExpanded;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        expandedValue: List<String>.from(json["expandedValue"].map((x) => x)),
        headerValue: json["headerValue"],
        icon: json["icon"],
        isExpanded: json["isExpanded"],
      );

  Map<String, dynamic> toJson() => {
        "expandedValue": List<dynamic>.from(expandedValue.map((x) => x)),
        "headerValue": headerValue,
        "icon": icon,
        "isExpanded": isExpanded,
      };
}

class MenuOptions extends StatefulWidget {
  const MenuOptions({
    Key key,
  }) : super(key: key);

  @override
  _MenuOptionsState createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  List<Item> _data = [
    Item(
      headerValue: "Help & Support",
      icon: Icons.help_outline_rounded,
      expandedValue: ["Help & Support"],
      isExpanded: false,
    ),
    Item(
      headerValue: "Setting & Privacy",
      icon: Icons.settings,
      expandedValue: ["Settings"],
      isExpanded: false,
    ),
    Item(
      headerValue: "Logout",
      icon: Icons.logout,
      expandedValue: ["Logout"],
      isExpanded: false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.grey[300]),
          child: ExpansionPanelList(
            dividerColor: Colors.grey[200],
            elevation: 1,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: [
              ..._data
                  .map(
                    (e) => ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (context, bool isExpanded) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                e.icon,
                                size: 30,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                e.headerValue,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: e.expandedValue
                            .map((e) => ListTile(title: Text(e)))
                            .toList(),
                      ),
                      isExpanded: e.isExpanded,
                    ),
                  )
                  .toList(),
              // ExpansionPanel(
              //   headerBuilder: (context, isExpanded) {
              //     return ListTile(
              //       title: Row(
              //         children: [
              //           Icon(
              //             Icons.logout,
              //             size: 30,
              //           ),
              //           SizedBox(
              //             width: 15,
              //           ),
              //           Text(
              //             "Logout",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //             ),
              //           )
              //         ],
              //       ),
              //     );
              //   },
              //   body: ListTile(
              //     title: Text(
              //       "Logout",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              //   isExpanded: false,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
