// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PssTable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PssTable _$PssTableFromJson(Map<String, dynamic> json) => PssTable(
      json['ss_name'] as String?,
      json['plan'] as String?,
      json['state'] as String?,
      json['state_code'] as int?,
      json['district'] as String?,
      json['district_code'] as int?,
      json['discom'] as String?,
      json['discom_code'] as String?,
      json['ss_village_name'] as String?,
      json['ss_village_code'] as int?,
      json['ss_type'] as String?,
      json['feed_in'] as int?,
      json['feeder_11kv_out'] as int?,
      json['ss_capacity_mva'] as String?,
      (json['feeder11kv_length_ckm'] as num?)?.toDouble(),
      (json['lattitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
      json['created_by'] as String?,
      json['image_path'] as String?,
      json['asset_number'] as String?,
      json['from_asset_number'] as String?,
      json['feeder_name'] as String?,
      json['created_at'] as String?,
    );

Map<String, dynamic> _$PssTableToJson(PssTable instance) => <String, dynamic>{
      'ss_name': instance.ssName,
      'plan': instance.plan,
      'state': instance.state,
      'state_code': instance.stateCode,
      'district': instance.district,
      'district_code': instance.districtCode,
      'discom': instance.discom,
      'discom_code': instance.discomCode,
      'ss_village_name': instance.ssVillageName,
      'ss_village_code': instance.ssVillageCode,
      'ss_type': instance.ssType,
      'feed_in': instance.feedIn,
      'feeder_11kv_out': instance.feeder11kvOut,
      'ss_capacity_mva': instance.ssCapacityMva,
      'feeder11kv_length_ckm': instance.feeder11kvLengthCkm,
      'lattitude': instance.lattitude,
      'longitude': instance.longitude,
      'created_by': instance.createdBy,
      'image_path': instance.imagePath,
      'asset_number': instance.assetNumber,
      'from_asset_number': instance.fromAssetNumber,
      'feeder_name': instance.feederName,
      'created_at': instance.createdAt,
    };
