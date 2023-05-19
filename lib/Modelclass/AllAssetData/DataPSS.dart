import 'package:rechyriedapp/Modelclass/AllAssetData/PssTable.dart';
import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'DataPSS.g.dart';

@JsonSerializable()
class DataPSS {
    @JsonKey(name: "Table1")
    List<PssTable>? psstable;

    DataPSS({this.psstable});

    factory DataPSS.fromJson(Map<String, dynamic> json) =>_$DataPSSFromJson(json);

    Map<String, dynamic> toJson() =>_$DataPSSToJson(this);
}