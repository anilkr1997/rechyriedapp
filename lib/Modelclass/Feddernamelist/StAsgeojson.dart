import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'StAsgeojson.g.dart';
@JsonSerializable()
class StAsgeojson {

  @JsonKey(name: "type")

   String? type;
  @JsonKey(name: "feeder_name")
   String? feederName;
  @JsonKey(name: "plan")

   String? plan;
  @JsonKey(name: "coordinates")

   List<List<List<double>>>? coordinates ;

  StAsgeojson(this.type, this.feederName, this.plan, this.coordinates);

  factory StAsgeojson.fromJson(Map<String, dynamic> json)  => _$StAsgeojsonFromJson(json);

  Map<String, dynamic> toJson() => _$StAsgeojsonToJson(this);
}