import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/screens/second/model.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ScopedModelDescendant<SecondModel>(builder: (context, child, model) {
          return IconButton(
            icon: Icon(Icons.add),
            onPressed: model.increment,
          );
        })
      ],
    );
  }
}
