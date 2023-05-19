import 'package:json_annotation/json_annotation.dart';
import 'dart:core';

part 'Revercgeocode.g.dart';

@JsonSerializable()
class Revercgeocode {
    @JsonKey(name: "Data")
    List<ReverxData>? data;

    @JsonKey(name: "Message")
    String? message;

    Revercgeocode({ this.data, this.message});

    factory Revercgeocode.fromJson(Map<String, dynamic> json)  => _$RevercgeocodeFromJson(json);

    Map<String, dynamic> toJson() => _$RevercgeocodeToJson(this);


}
@JsonSerializable()
class ReverxData {
    @JsonKey(name: "discom_cod")
    String? discom_code;

    @JsonKey(name: "discom_nam")
    String? discom_name;

    @JsonKey(name: "dt_code")
    int? district_code;

    @JsonKey(name: "district_n")
    String? district_name;

    @JsonKey(name: "st_code")
    int? state_code;

    @JsonKey(name: "state_name")
    String? state_name;

    @JsonKey(name: "village_co")
    String? vil_code;

    @JsonKey(name: "village_na")
    String? village_name;

    ReverxData({  this.discom_code, this.discom_name, this.district_code, this.district_name, this.state_code, this.state_name, this.vil_code, this.village_name});

    factory ReverxData.fromJson(Map<String, dynamic> json) => _$ReverxDataFromJson(json);

    Map<String, dynamic> toJson() => _$ReverxDataToJson(this);
}
