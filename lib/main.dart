import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/core/counter_model.dart';
import 'package:counter_scoped/app/screens/home/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: counterModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
