import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
part 'PostPSS.g.dart';
@JsonSerializable()
class PostPSS {
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
  @JsonKey(name: "ss_village_name")
  String? ssVillageName;
  @JsonKey(name: "ss_village_code")
  String? ssVillageCode;
  @JsonKey(name: "ss_name")
  String? ssName;
  @JsonKey(name: "ss_type")
  String? ssType;
  @JsonKey(name: "feed_in")
  String? feedIn;
  @JsonKey(name: "feeder_11kv_out")
  String? feeder11kvOut;
  @JsonKey(name: "ss_capacity_mva")
  String? ssCapacityMva;
  @JsonKey(name: "feeder11kv_length_ckm")
  String? feeder11kvLengthCkm;
  @JsonKey(name: "lattitude")
  String? lattitude;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "imagePath")
  String? imagePath;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;
  @JsonKey(name: "feeder_name")
  String? feeder_name;

  PostPSS(
      this.plan,
      this.state,
      this.stateCode,
      this.district,
      this.districtCode,
      this.discom,
      this.discomCode,
      this.ssVillageName,
      this.ssVillageCode,
      this.ssName,
      this.ssType,
      this.feedIn,
      this.feeder11kvOut,
      this.ssCapacityMva,
      this.feeder11kvLengthCkm,
      this.lattitude,
      this.longitude,
      this.createdBy,
      this.imagePath,
      this.assetNumber,
      this.fromAssetNumber,
      this.feeder_name);

  //factory PostPSS.fromJson(Map<String,dynamic> json) => _$PostPSSFromJson(json);
  Map<String,dynamic> toJson()=> _$PostPSSToJson(this);


}
