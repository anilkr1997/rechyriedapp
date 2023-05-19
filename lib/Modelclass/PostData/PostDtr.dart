import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'PostDtr.g.dart';

@JsonSerializable()
class PostDtr {
  @JsonKey(name: "plan")
  String? plan;
  @JsonKey(name: "state")
  String? state;
  @JsonKey(name: "state_code")
  String? stateCode;
  @JsonKey(name: "discom")
  String? discom;
  @JsonKey(name: "discom_code")
  String? discomCode;
  @JsonKey(name: "district")
  String? district;
  @JsonKey(name: "district_code")
  String? districtCode;
  @JsonKey(name: "dtr_village_name")
  String? dtrVillageName;
  @JsonKey(name: "dtr_village_code")
  String? dtrVillageCode;
  @JsonKey(name: "dtr_5kva")
  String? dtr5kva;
  @JsonKey(name: "dtr_6kva")
  String? dtr6kva;
  @JsonKey(name: "dtr_10kva")
  String? dtr10kva;
  @JsonKey(name: "dtr_16kva")
  String? dtr16kva;
  @JsonKey(name: "dtr_25kva")
  String? dtr25kva;
  @JsonKey(name: "dtr_40kva")
  String? dtr40kva;
  @JsonKey(name: "dtr_63kva")
  String? dtr63kva;
  @JsonKey(name: "dtr_100kva")
  String? dtr100kva;
  @JsonKey(name: "dtr_200kva")
  String? dtr200kva;
  @JsonKey(name: "dtr_250kva")
  String? dtr250kva;
  @JsonKey(name: "dtr_300kva")
  String? dtr300kva;
  @JsonKey(name: "dtr_500kva")
  String? dtr500kva;
  @JsonKey(name: "Length11kv_ckm")
  String? length11kvCkm;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "lattitude")
  String? lattitude;
  @JsonKey(name: "Dtr_count")
  String? dtrCount;
  @JsonKey(name: "total_capacity_kva")
  String? totalCapacityKva;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "image_Path")
  String? imagePath;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;

  @JsonKey(name: "feeder_name")
  String? feeder_name;

  @JsonKey(name: "dtr_400kva")
  String? dtr_400kva;

  PostDtr(
      {this.plan,
      this.state,
      this.stateCode,
      this.discom,
      this.discomCode,
      this.district,
      this.districtCode,
      this.dtrVillageName,
      this.dtrVillageCode,
      this.dtr5kva,
      this.dtr6kva,
      this.dtr10kva,
      this.dtr16kva,
      this.dtr25kva,
      this.dtr40kva,
      this.dtr63kva,
      this.dtr100kva,
      this.dtr200kva,
      this.dtr250kva,
      this.dtr300kva,
      this.dtr500kva,
      this.length11kvCkm,
      this.longitude,
      this.lattitude,
      this.dtrCount,
      this.totalCapacityKva,
      this.createdBy,
      this.imagePath,
      this.assetNumber,
      this.fromAssetNumber,
      this.feeder_name,
      this.dtr_400kva});

  factory PostDtr.fromJson(Map<String, dynamic> json) =>
      _$PostDtrFromJson(json);

  Map<String, dynamic> toJson() => _$PostDtrToJson(this);
}
