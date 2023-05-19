// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserFeederline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFeederline _$UserFeederlineFromJson(Map<String, dynamic> json) =>
    UserFeederline(
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Feederdata.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$UserFeederlineToJson(UserFeederline instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Data': instance.data,
    };
