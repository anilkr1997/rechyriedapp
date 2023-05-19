// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataDTR.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataDTR _$DataDTRFromJson(Map<String, dynamic> json) => DataDTR(
      dtrtable: (json['Table1'] as List<dynamic>?)
          ?.map((e) => DtrTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataDTRToJson(DataDTR instance) => <String, dynamic>{
      'Table1': instance.dtrtable,
    };
