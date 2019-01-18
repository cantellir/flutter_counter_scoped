import 'package:flutter/material.dart';

import 'package:counter_scoped/app/screens/second/screen.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        )
      ],
    );
  }
}
