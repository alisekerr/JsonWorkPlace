
import 'package:dio/dio.dart';

import 'package:jsonworkplace/feature/model/mydata.dart';

abstract class ITaskService {
  final Dio dio;
  ITaskService(this.dio);

  Future<List<MyData>> fetchAllTask();
}
