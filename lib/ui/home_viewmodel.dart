import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  // final NavigationService _navigationService = locator<NavigationService>();

  int _counter = 0;
  String _title = 'Home View';

  int get counter => _counter;

  String get title => '$_title $_counter';

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void getParams() {}
}
