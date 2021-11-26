// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mydata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyData _$MyDataFromJson(Map<String, dynamic> json) => MyData(
      json['userId'] as int?,
      json['id'] as int?,
      json['title'] as String?,
      json['body'] as String?,
    );

Map<String, dynamic> _$MyDataToJson(MyData instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
