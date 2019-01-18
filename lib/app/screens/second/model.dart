import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class SecondModel extends Model {
  int _counter = 0;
  bool _isLoading = false;

  int get counter => _counter;
  bool get isLoading => _isLoading;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void _showLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void _hideLoading() {
    _isLoading = false;
    notifyListeners();
  }

  void testLoading() {
    _showLoading();
    Future.delayed(new Duration(seconds: 3), () {
      _hideLoading();
    });
  }

  static SecondModel of(BuildContext context) => ScopedModel.of<SecondModel>(context, rebuildOnChange: true);  
}