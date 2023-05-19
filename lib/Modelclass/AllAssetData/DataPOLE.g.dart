// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataPOLE.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPOLE _$DataPOLEFromJson(Map<String, dynamic> json) => DataPOLE(
      poletable: (json['Table1'] as List<dynamic>?)
          ?.map((e) => PoleTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataPOLEToJson(DataPOLE instance) => <String, dynamic>{
      'Table1': instance.poletable,
    };
