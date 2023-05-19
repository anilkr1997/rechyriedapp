// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Feederdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feederdata _$FeederdataFromJson(Map<String, dynamic> json) => Feederdata(
      created_by: json['created_by'] as String?,
      end_: json['end_'] as String?,
      feeder_name: json['feeder_name'] as String?,
      id: json['id'] as int?,
      plan: json['plan'] as String?,
      st_asgeojson: json['st_asgeojson'] as String?,
      start_: json['start_'] as String?,
    );

Map<String, dynamic> _$FeederdataToJson(Feederdata instance) =>
    <String, dynamic>{
      'created_by': instance.created_by,
      'end_': instance.end_,
      'feeder_name': instance.feeder_name,
      'id': instance.id,
      'plan': instance.plan,
      'st_asgeojson': instance.st_asgeojson,
      'start_': instance.start_,
    };
