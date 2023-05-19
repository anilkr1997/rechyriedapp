import 'package:json_annotation/json_annotation.dart';

part 'PoleTable.g.dart';

@JsonSerializable()
class PoleTable {
  @JsonKey(name: "plan")
  String plan;
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
  @JsonKey(name: "pole_village_name")
  String? poleVillageName;
  @JsonKey(name: "pole_village_code")
  int? poleVillageCode;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "lattitude")
  double? lattitude;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "image_path")
  String? imagePath;
  @JsonKey(name: "feeder_name")
  String? feederName;


  PoleTable(
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
      this.id,
      this.imagePath,
      this.feederName);

  factory PoleTable.fromJson(Map<String, dynamic> json) =>
      _$PoleTableFromJson(json);

  Map<String, dynamic> toJson() => _$PoleTableToJson(this);
}
