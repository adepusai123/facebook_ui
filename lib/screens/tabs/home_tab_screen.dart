import 'package:flutter/material.dart';

import 'components/profile_status.dart';

class HomeTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProfileStatusWidget(),
        ],
      ),
    );
  }
}
