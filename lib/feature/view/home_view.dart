import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jsonworkplace/feature/viewmodel/task_view_model.dart';
import 'package:jsonworkplace/feature/widget/task_card.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final TaskViewModel _viewModel = TaskViewModel();
  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: buildObserverAppBar(),
      ),
      body: buildObserverBody(),
    );
  }

  Observer buildObserverAppBar() {
    return Observer(builder: (_) {
        return Visibility(
          visible: _viewModel.pageLifes == LifeState.LOADING,
          child:  const CircularProgressIndicator(),
        );
      });
  }

  Observer buildObserverBody() {
    return Observer(builder: (_) {
      return ListView.builder(
          itemCount: _viewModel.items.length,
          itemBuilder: (context, index) =>
              TaskCard(taskModel: _viewModel.items[index]));
    });
  }
}
