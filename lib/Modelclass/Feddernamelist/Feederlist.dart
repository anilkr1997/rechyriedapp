import 'package:json_annotation/json_annotation.dart';
import 'dart:core';
part 'Feederlist.g.dart';


@JsonSerializable()
class Feederlist {
  @JsonKey(name: "state")
  String? state;
  @JsonKey(name: "state_code")
  int? stateCode;
  @JsonKey(name: "district")
  String? district;
  @JsonKey(name: "district_code")
  int? districtCode;
  @JsonKey(name: "discom")
  String? discom;
  @JsonKey(name: "discom_code")
  String? discomCode;
  @JsonKey(name: "ss_village_name")
  String? ssVillageName;
  @JsonKey(name: "ss_village_code")
  int? ssVillageCode;
  @JsonKey(name: "ss_name")
  String? ssName;
  @JsonKey(name: "ss_type")
  String? ssType;
  @JsonKey(name: "feed_in")
  int? feedIn;
  @JsonKey(name: "feeder_11kv_out")
  int? feeder11kvOut;
  @JsonKey(name: "lattitude")
  double? lattitude;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;
  @JsonKey(name: "feeder_name")
  String? feederName;
  @JsonKey(name: "created_at")
  String? createdAt;

  Feederlist(
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
      this.lattitude,
      this.longitude,
      this.createdBy,
      this.assetNumber,
      this.fromAssetNumber,
      this.feederName,
      this.createdAt);

  factory Feederlist.fromJson(Map<String, dynamic> json)  => _$FeederlistFromJson(json);

  Map<String, dynamic> toJson() => _$FeederlistToJson(this);
}