// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PoleTable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoleTable _$PoleTableFromJson(Map<String, dynamic> json) => PoleTable(
      json['plan'] as String,
      json['state'] as String?,
      json['state_code'] as int?,
      json['district'] as String?,
      json['district_code'] as int?,
      json['discom'] as String?,
      json['discom_code'] as String?,
      json['pole_village_name'] as String?,
      json['pole_village_code'] as int?,
      json['asset_number'] as String?,
      json['from_asset_number'] as String?,
      (json['longitude'] as num?)?.toDouble(),
      (json['lattitude'] as num?)?.toDouble(),
      json['created_by'] as String?,
      json['id'] as int?,
      json['image_path'] as String?,
      json['feeder_name'] as String?,
    );

Map<String, dynamic> _$PoleTableToJson(PoleTable instance) => <String, dynamic>{
      'plan': instance.plan,
      'state': instance.state,
      'state_code': instance.stateCode,
      'district': instance.district,
      'district_code': instance.districtCode,
      'discom': instance.discom,
      'discom_code': instance.discomCode,
      'pole_village_name': instance.poleVillageName,
      'pole_village_code': instance.poleVillageCode,
      'asset_number': instance.assetNumber,
      'from_asset_number': instance.fromAssetNumber,
      'longitude': instance.longitude,
      'lattitude': instance.lattitude,
      'created_by': instance.createdBy,
      'id': instance.id,
      'image_path': instance.imagePath,
      'feeder_name': instance.feederName,
    };
