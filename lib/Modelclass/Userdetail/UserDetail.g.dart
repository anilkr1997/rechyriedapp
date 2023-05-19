// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => UserDetail(
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
    };
