// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PSSmaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PSSmaster _$PSSmasterFromJson(Map<String, dynamic> json) => PSSmaster(
      json['Message'] as String?,
      (json['Data'] as List<dynamic>?)
          ?.map((e) => Pssnew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PSSmasterToJson(PSSmaster instance) => <String, dynamic>{
      'Message': instance.message,
      'Data': instance.data,
    };
