import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
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

  static final CounterModel _counterModel = new CounterModel._internal();

  factory CounterModel() {
    return _counterModel;
  }

  CounterModel._internal();
}

CounterModel counterModel = CounterModel();