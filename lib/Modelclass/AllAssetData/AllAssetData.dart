import 'package:json_annotation/json_annotation.dart';
import 'package:rechyriedapp/Modelclass/AllAssetData/DataDTR.dart';
import 'package:rechyriedapp/Modelclass/AllAssetData/DataPOLE.dart';
import 'package:rechyriedapp/Modelclass/AllAssetData/DataPSS.dart';

part 'AllAssetData.g.dart';

@JsonSerializable()
class AllAssetData {
  @JsonKey(name: "DataDTR")
  DataDTR? dataDTR;
  @JsonKey(name: "DataPOLE")
  DataPOLE? dataPOLE;
  @JsonKey(name: "DataPSS")
  DataPSS? dataPSS;
  @JsonKey(name: "Message")
  String? message;

  AllAssetData({this.dataDTR, this.dataPOLE, this.dataPSS, this.message});

  factory AllAssetData.fromJson(Map<String, dynamic> json) =>_$AllAssetDataFromJson(json);

  Map<String, dynamic> toJson() => _$AllAssetDataToJson(this);
}
