import 'package:flutter/material.dart';

import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:counter_scoped/app/core/counter_model.dart';
import 'package:counter_scoped/app/screens/home/widgets/action_buttons.dart';
import 'package:counter_scoped/app/screens/home/widgets/center_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
        builder: (context, child, model) {
      return ModalProgressHUD(
        child: _buildWidget(),
        inAsyncCall: model.isLoading,
      );
    });
  }

  Widget _buildWidget() {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[ActionButtons()],
        title: Text('Scoped Model Counter App'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[CenterContent()],
        ),
      ),
      
      floatingActionButton:
          ScopedModelDescendant<CounterModel>(builder: (context, child, model) {
        return FloatingActionButton(
          onPressed: model.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
