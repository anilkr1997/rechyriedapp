// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostPole.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostPole _$PostPoleFromJson(Map<String, dynamic> json) => PostPole(
      plan: json['plan'] as String?,
      state: json['state'] as String?,
      stateCode: json['state_code'] as String?,
      district: json['district'] as String?,
      districtCode: json['district_code'] as String?,
      discom: json['discom'] as String?,
      discomCode: json['discom_code'] as String?,
      poleVillageName: json['pole_village_name'] as String?,
      poleVillageCode: json['pole_village_code'] as String?,
      assetNumber: json['asset_number'] as String?,
      fromAssetNumber: json['from_asset_number'] as String?,
      longitude: json['longitude'] as String?,
      lattitude: json['lattitude'] as String?,
      createdBy: json['created_by'] as String?,
      imagePath: json['imagePath'] as String?,
      feeder_name: json['feeder_name'] as String?,
    );

Map<String, dynamic> _$PostPoleToJson(PostPole instance) => <String, dynamic>{
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
      'imagePath': instance.imagePath,
      'feeder_name': instance.feeder_name,
    };
