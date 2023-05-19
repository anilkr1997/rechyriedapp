import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:rechyriedapp/Modelclass/PSSmastere/Pssnew.dart';
part 'PSSmaster.g.dart';

@JsonSerializable()
class PSSmaster{
  @JsonKey(name: "Message")
   String? message;
  @JsonKey(name:"Data")
   List<Pssnew>? data;

  PSSmaster(this.message, this.data);


  factory PSSmaster.fromJson(Map<String,dynamic> json) => _$PSSmasterFromJson(json);
  Map<String,dynamic> toJson()=> _$PSSmasterToJson(this);
}