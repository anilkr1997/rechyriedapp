// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AllAssetData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllAssetData _$AllAssetDataFromJson(Map<String, dynamic> json) => AllAssetData(
      dataDTR: json['DataDTR'] == null
          ? null
          : DataDTR.fromJson(json['DataDTR'] as Map<String, dynamic>),
      dataPOLE: json['DataPOLE'] == null
          ? null
          : DataPOLE.fromJson(json['DataPOLE'] as Map<String, dynamic>),
      dataPSS: json['DataPSS'] == null
          ? null
          : DataPSS.fromJson(json['DataPSS'] as Map<String, dynamic>),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$AllAssetDataToJson(AllAssetData instance) =>
    <String, dynamic>{
      'DataDTR': instance.dataDTR,
      'DataPOLE': instance.dataPOLE,
      'DataPSS': instance.dataPSS,
      'Message': instance.message,
    };
