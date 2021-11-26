import 'package:flutter/material.dart';
import 'package:jsonworkplace/feature/core/network/network_manager.dart';
import 'package:jsonworkplace/feature/model/mydata.dart';
import 'package:jsonworkplace/feature/services/i_task_service.dart';
import 'package:jsonworkplace/feature/services/task_service.dart';
import 'package:mobx/mobx.dart';

part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
   BuildContext? context;
  late ITaskService taskService;

  @observable
  List<MyData> items = [];

  @observable
  LifeState pageLifes = LifeState.IDDLE;

  _TaskViewModelBase({this.context}) {
    taskService = TaskService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    this.context = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    pageLifes = LifeState.LOADING;
    items = await taskService.fetchAllTask();
    pageLifes = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}