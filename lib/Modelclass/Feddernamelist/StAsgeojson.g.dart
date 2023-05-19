// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StAsgeojson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StAsgeojson _$StAsgeojsonFromJson(Map<String, dynamic> json) => StAsgeojson(
      json['type'] as String?,
      json['feeder_name'] as String?,
      json['plan'] as String?,
      (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$StAsgeojsonToJson(StAsgeojson instance) =>
    <String, dynamic>{
      'type': instance.type,
      'feeder_name': instance.feederName,
      'plan': instance.plan,
      'coordinates': instance.coordinates,
    };
