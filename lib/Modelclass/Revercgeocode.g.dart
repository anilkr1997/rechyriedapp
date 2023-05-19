// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Revercgeocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Revercgeocode _$RevercgeocodeFromJson(Map<String, dynamic> json) =>
    Revercgeocode(
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => ReverxData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$RevercgeocodeToJson(Revercgeocode instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
    };

ReverxData _$ReverxDataFromJson(Map<String, dynamic> json) => ReverxData(
      discom_code: json['discom_cod'] as String?,
      discom_name: json['discom_nam'] as String?,
      district_code: json['dt_code'] as int?,
      district_name: json['district_n'] as String?,
      state_code: json['st_code'] as int?,
      state_name: json['state_name'] as String?,
      vil_code: json['village_co'] as String?,
      village_name: json['village_na'] as String?,
    );

Map<String, dynamic> _$ReverxDataToJson(ReverxData instance) =>
    <String, dynamic>{
      'discom_cod': instance.discom_code,
      'discom_nam': instance.discom_name,
      'dt_code': instance.district_code,
      'district_n': instance.district_name,
      'st_code': instance.state_code,
      'state_name': instance.state_name,
      'village_co': instance.vil_code,
      'village_na': instance.village_name,
    };
