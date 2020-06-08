import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _counter = 0;
  String _title = 'Home View';

  int get counter => _counter;

  String get title => '$_title $_counter';

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
