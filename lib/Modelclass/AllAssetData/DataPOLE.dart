import 'package:rechyriedapp/Modelclass/AllAssetData/PoleTable.dart';
import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'DataPOLE.g.dart';

@JsonSerializable()
class DataPOLE {
    @JsonKey(name: "Table1")

    List<PoleTable>? poletable;

    DataPOLE({this.poletable});

    factory DataPOLE.fromJson(Map<String, dynamic> json) =>_$DataPOLEFromJson(json);

    Map<String, dynamic> toJson() =>_$DataPOLEToJson(this);
}