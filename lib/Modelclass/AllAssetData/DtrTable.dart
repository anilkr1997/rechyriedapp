import 'package:json_annotation/json_annotation.dart';

part 'DtrTable.g.dart';

@JsonSerializable()
class DtrTable {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "plan")
  String? plan;
  @JsonKey(name: "state")
  String? state;
  @JsonKey(name: "state_code")
  int? stateCode;
  @JsonKey(name: "discom")
  String? discom;
  @JsonKey(name: "discom_code")
  String? discomCode;
  @JsonKey(name: "district")
  String? district;
  @JsonKey(name: "district_code")
  int? districtCode;
  @JsonKey(name: "dtr_village_name")
  String? dtrVillageName;
  @JsonKey(name: "dtr_village_code")
  int? dtrVillageCode;
  @JsonKey(name: "dtr_5kva")
  int? dtr5kva;
  @JsonKey(name: "dtr_6kva")
  int? dtr6kva;
  @JsonKey(name: "dtr_10kva")
  int? dtr10kva;
  @JsonKey(name: "dtr_16kva")
  int? dtr16kva;
  @JsonKey(name: "dtr_25kva")
  int? dtr25kva;
  @JsonKey(name: "dtr_40kva")
  int? dtr40kva;
  @JsonKey(name: "dtr_63kva")
  int? dtr63kva;
  @JsonKey(name: "dtr_100kva")
  int? dtr100kva;
  @JsonKey(name: "dtr_200kva")
  int? dtr200kva;
  @JsonKey(name: "dtr_250kva")
  int? dtr250kva;
  @JsonKey(name: "dtr_300kva")
  int? dtr300kva;
  @JsonKey(name: "dtr_500kva")
  int? dtr500kva;
  @JsonKey(name: "length11kv_ckm")
  double? length11kvCkm;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "lattitude")
  double? lattitude;
  @JsonKey(name: "dtr_count")
  int? dtrCount;
  @JsonKey(name: "total_capacity_kva")
  int? totalCapacityKva;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "image_path")
  String? imagePath;
  @JsonKey(name: "asset_number")
  String? assetNumber;
  @JsonKey(name: "from_asset_number")
  String? fromAssetNumber;
  @JsonKey(name: "feeder_name")
  String? feederName;
  @JsonKey(name: "dtr_400kva")
  int? dtr400kva;

  DtrTable(
      this.id,
      this.plan,
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
      this.feederName,
      this.dtr400kva);

  factory DtrTable.fromJson(Map<String, dynamic> json) =>
      _$DtrTableFromJson(json);

  Map<String, dynamic> toJson() => _$DtrTableToJson(this);
}
