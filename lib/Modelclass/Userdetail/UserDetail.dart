
import 'package:json_annotation/json_annotation.dart';
import 'dart:core';

import 'package:rechyriedapp/Modelclass/Userdetail/UserData.dart';
part 'UserDetail.g.dart';

@JsonSerializable()
class UserDetail {
  @JsonKey(name: "Data")
  List<UserData>? data;
  @JsonKey(name: "Message")
  String? message;

  UserDetail({this.data, this.message});

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailToJson(this);
}
