// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostPSS.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostPSS _$PostPSSFromJson(Map<String, dynamic> json) => PostPSS(
      json['plan'] as String?,
      json['state'] as String?,
      json['state_code'] as String?,
      json['district'] as String?,
      json['district_code'] as String?,
      json['discom'] as String?,
      json['discom_code'] as String?,
      json['ss_village_name'] as String?,
      json['ss_village_code'] as String?,
      json['ss_name'] as String?,
      json['ss_type'] as String?,
      json['feed_in'] as String?,
      json['feeder_11kv_out'] as String?,
      json['ss_capacity_mva'] as String?,
      json['feeder11kv_length_ckm'] as String?,
      json['lattitude'] as String?,
      json['longitude'] as String?,
      json['created_by'] as String?,
      json['imagePath'] as String?,
      json['asset_number'] as String?,
      json['from_asset_number'] as String?,
      json['feeder_name'] as String?,
    );

Map<String, dynamic> _$PostPSSToJson(PostPSS instance) => <String, dynamic>{
      'plan': instance.plan,
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
      'ss_capacity_mva': instance.ssCapacityMva,
      'feeder11kv_length_ckm': instance.feeder11kvLengthCkm,
      'lattitude': instance.lattitude,
      'longitude': instance.longitude,
      'created_by': instance.createdBy,
      'imagePath': instance.imagePath,
      'asset_number': instance.assetNumber,
      'from_asset_number': instance.fromAssetNumber,
      'feeder_name': instance.feeder_name,
    };
