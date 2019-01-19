import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/core/counter_model.dart';

class CenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
        ),
        ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) {
            return Text(
              model.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
        ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) {
            return RaisedButton(
              child: Text('Test public bloc loading'),
              onPressed: () {
                model.testLoading();
              },
            );
          },
        )
      ],
    );
  }
}
