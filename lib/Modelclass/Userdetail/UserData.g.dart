// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      district: json['district'] as String?,
      id: json['id'] as int?,
      is_active: json['is_active'] as bool?,
      scheme: json['scheme'] as String?,
      user_name: json['user_name'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'district': instance.district,
      'id': instance.id,
      'is_active': instance.is_active,
      'scheme': instance.scheme,
      'user_name': instance.user_name,
    };
