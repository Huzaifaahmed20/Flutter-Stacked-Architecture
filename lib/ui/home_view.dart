import 'package:flutter/material.dart';
import 'package:flutter_stacked_architecture_practice/ui/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) => model.getParams(context),
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: model.updateCounter),
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
