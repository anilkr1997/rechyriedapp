// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Feederlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feederlist _$FeederlistFromJson(Map<String, dynamic> json) => Feederlist(
      json['state'] as String?,
      json['state_code'] as int?,
      json['district'] as String?,
      json['district_code'] as int?,
      json['discom'] as String?,
      json['discom_code'] as String?,
      json['ss_village_name'] as String?,
      json['ss_village_code'] as int?,
      json['ss_name'] as String?,
      json['ss_type'] as String?,
      json['feed_in'] as int?,
      json['feeder_11kv_out'] as int?,
      (json['lattitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
      json['created_by'] as String?,
      json['asset_number'] as String?,
      json['from_asset_number'] as String?,
      json['feeder_name'] as String?,
      json['created_at'] as String?,
    );

Map<String, dynamic> _$FeederlistToJson(Feederlist instance) =>
    <String, dynamic>{
      'state': instance.state,
      'state_code': instance.stateCode,
      'district': instance.district,
      'district_code': instance.districtCode,
      'discom': instance.discom,
      'discom_code': instance.discomCode,
      'ss_village_name': instance.ssVillageName,
      'ss_village_code': instance.ssVillageCode,
      'ss_name': instance.ssName,
      'ss_type': instance.ssType,
      'feed_in': instance.feedIn,
      'feeder_11kv_out': instance.feeder11kvOut,
      'lattitude': instance.lattitude,
      'longitude': instance.longitude,
      'created_by': instance.createdBy,
      'asset_number': instance.assetNumber,
      'from_asset_number': instance.fromAssetNumber,
      'feeder_name': instance.feederName,
      'created_at': instance.createdAt,
    };
