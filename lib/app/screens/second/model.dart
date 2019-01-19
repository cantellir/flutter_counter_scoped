import 'package:scoped_model/scoped_model.dart';

class SecondModel extends Model {
  int _counter = 0;
  bool _isLoading = false;
  String _initialData = '';

  int get counter => _counter;
  bool get isLoading => _isLoading;
  String get initialData => _initialData;

  SecondModel() {
    simulateInitialData();
  }

  void simulateInitialData() {
    _showLoading();
    Future.delayed(new Duration(seconds: 4), () {
      _initialData = 'Initial data loaded!';
      _hideLoading();
    });
  }

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
}