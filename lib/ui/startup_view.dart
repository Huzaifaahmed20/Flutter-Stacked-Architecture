import 'package:flutter/material.dart';
import 'package:flutter_stacked_architecture_practice/ui/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => model.navigateToHome()),
        body: Center(
          child: Text('Startup View'),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
