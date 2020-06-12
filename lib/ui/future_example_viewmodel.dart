import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_stacked_architecture_practice/app/locator.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  final DialogService _dialogService = locator<DialogService>();

  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 3));
    throw Exception('This is an error');
  }

  @override
  void onError(error) {
    _dialogService.showDialog(title: 'Error Occured', description: error.toString());
    super.onError(error);
  }

  @override
  Future<String> futureToRun() => getDataFromServer();
}
