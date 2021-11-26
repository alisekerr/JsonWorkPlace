
import 'package:json_annotation/json_annotation.dart';

part 'mydata.g.dart';

@JsonSerializable()
class MyData {
  int? userId;
  int? id;
  String? title;
  String? body;

  MyData(
    this.userId,
    this.id,
    this.title,
    this.body,
  );

  factory MyData.fromJson(Map<String,dynamic> json ) =>_$MyDataFromJson(json);
  Map<String,dynamic> toJson() =>_$MyDataToJson(this);

}
