import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
part 'PostPole.g.dart';
@JsonSerializable()
class PostPole {
  @JsonKey(name: "plan")
  String? plan;
  @JsonKey(name: "state")
  String? state;
  @JsonKey(name: "state_code")
  String? stateCode;
  @JsonKey(name: "district")
  String? district;
  @JsonKey(name: "district_code")
  String? districtCode;
  @JsonKey(name: "discom")
  String? discom;
  @JsonKey(name: "discom_code")
  String? discomCode;
  @JsonKey(name: "pole_village_name")
  String? poleVillageName;
  @JsonKey(name: "pole_village_code")
  String? poleVillageCode;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "lattitude")
  String? lattitude;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "imagePath")
  String? imagePath;
  @JsonKey(name: "feeder_name")
  String? feeder_name;

  PostPole({
      this.plan,
      this.state,
      this.stateCode,
      this.district,
      this.districtCode,
      this.discom,
      this.discomCode,
      this.poleVillageName,
      this.poleVillageCode,
      this.assetNumber,
      this.fromAssetNumber,
      this.longitude,
      this.lattitude,
      this.createdBy,
      this.imagePath,
      this.feeder_name});


  factory PostPole.fromJson(Map<String, dynamic> json) =>
      _$PostPoleFromJson(json);

  Map<String, dynamic> toJson() => _$PostPoleToJson(this);
}
