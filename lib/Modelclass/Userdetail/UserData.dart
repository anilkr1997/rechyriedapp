
import 'package:json_annotation/json_annotation.dart';
import 'dart:core';
part 'UserData.g.dart';

@JsonSerializable()
class UserData {
  @JsonKey(name: "district")
  String? district;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "is_active")
  bool? is_active;
  @JsonKey(name: "scheme")
  String? scheme;
  @JsonKey(name: "user_name")
  String? user_name;

  UserData(
      {this.district, this.id, this.is_active, this.scheme, this.user_name});

  factory UserData.fromJson(Map<String, dynamic> json) =>_$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
