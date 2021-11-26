
part of 'task_service.dart';
enum _TaskServiceEndPoint{POSTS}

extension TaskServiceEndPointExtension on _TaskServiceEndPoint{
  String get rawValue{
    switch (this) {
      case _TaskServiceEndPoint.POSTS:
        return "/posts";
    }
  }
}