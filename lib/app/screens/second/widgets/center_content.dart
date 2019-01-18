import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/core/CounterModel.dart';
import 'package:counter_scoped/app/screens/second/model.dart';

class CenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Para teste, usando tanto o descendant quanto o .of
    final secondModel = SecondModel.of(context);

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

        RaisedButton(
          child: Text('Private counter: ${secondModel.counter.toString()}'),
          onPressed: secondModel.increment,
        ),

        RaisedButton(
          child: Text('Test private loading'),
          onPressed: secondModel.testLoading,
        )

        // ScopedModelDescendant < Count
      ],
    );
  }
}
