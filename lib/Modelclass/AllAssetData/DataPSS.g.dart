// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataPSS.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPSS _$DataPSSFromJson(Map<String, dynamic> json) => DataPSS(
      psstable: (json['Table1'] as List<dynamic>?)
          ?.map((e) => PssTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataPSSToJson(DataPSS instance) => <String, dynamic>{
      'Table1': instance.psstable,
    };
