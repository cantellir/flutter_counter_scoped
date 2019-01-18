import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:counter_scoped/app/screens/second/model.dart';
import 'package:counter_scoped/app/screens/second/widgets/action_buttons.dart';
import 'package:counter_scoped/app/screens/second/widgets/center_content.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  SecondModel _secondModel;

  @override
  void initState() {
    super.initState();
    _secondModel = SecondModel();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<SecondModel>(
      model: _secondModel,
      child: _buildWidget(),
    );
  }

  Widget _buildWidget() {
    final secondModel = SecondModel.of(context);

    return ModalProgressHUD(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          actions: <Widget>[ActionButtons()],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CenterContent(),
            ],
          ),
        ),
      ),
      inAsyncCall: secondModel.isLoading,
    );
  }
}
