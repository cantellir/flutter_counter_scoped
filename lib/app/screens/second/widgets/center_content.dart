import 'package:counter_scoped/app/screens/second/model.dart';
import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/core/counter_model.dart';

class CenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) {
            return RaisedButton(
              child: Text('Public counter: ${model.counter.toString()}'),
              onPressed: model.increment,
            );
          },
        ),

        ScopedModelDescendant<SecondModel>(builder: (context, child, model) {
          return RaisedButton(
            child: Text('Private counter: ${model.counter.toString()}'),
            onPressed: model.increment,
          );
        }),

        ScopedModelDescendant<SecondModel>(builder: (context, child, model) {
          return RaisedButton(
            child: Text('Test private loading'),
            onPressed: model.testLoading,
          );
        }),

        ScopedModelDescendant<CounterModel>(builder: (context, child, model) {
          return RaisedButton(
            child: Text('Test public loading'),
            onPressed: model.testLoading,
          );
        }),

        ScopedModelDescendant<SecondModel>(builder: (context, child, model) {
          return Text('Initial data: ' + model.initialData);
        }),

        // ScopedModelDescendant < Count
      ],
    );
  }
}
