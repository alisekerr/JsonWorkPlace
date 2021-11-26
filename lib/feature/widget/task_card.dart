import 'package:flutter/material.dart';
import 'package:jsonworkplace/feature/model/mydata.dart';

class TaskCard extends StatelessWidget {
 
  final MyData taskModel;

  const TaskCard({Key? key, required this.taskModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
                    child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Text(taskModel.id.toString()),
                  ),
                  title: Text(taskModel.title ?? ""),
                  subtitle: Text(taskModel.body ?? ""),
                ));
  }
}