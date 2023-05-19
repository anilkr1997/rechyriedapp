// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Feedername.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feedername _$FeedernameFromJson(Map<String, dynamic> json) => Feedername(
      json['Message'] as String?,
      (json['Data'] as List<dynamic>?)
          ?.map((e) => Feederlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedernameToJson(Feedername instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Data': instance.data,
    };
