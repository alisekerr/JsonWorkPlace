import 'dart:io';
import 'package:dio/dio.dart';
import 'package:jsonworkplace/feature/model/mydata.dart';
import 'package:jsonworkplace/feature/services/i_task_service.dart';

part 'task_service_endpoint.dart';

class TaskService extends ITaskService {
  TaskService(Dio dio) : super(dio);

  @override
  Future<List<MyData>> fetchAllTask() async {
    final response = await dio.get(_TaskServiceEndPoint.POSTS.rawValue);

    final data = response.data;

    if (data is List) {
      return data.map((e) => MyData.fromJson(e)).toList();
    }

    return [];
  }
}
