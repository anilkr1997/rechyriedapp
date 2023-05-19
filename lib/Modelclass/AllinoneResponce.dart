import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'AllinoneResponce.g.dart';

@JsonSerializable()
class AllinoneResponce {
    @JsonKey(name: "Message")
    String? message;

    @JsonKey(name: "status")
    String? status;

    AllinoneResponce({this.message, this.status});

    factory AllinoneResponce.fromJson(Map<String, dynamic> json) => _$AllinoneResponceFromJson(json);

    Map<String, dynamic> toJson() => _$AllinoneResponceToJson(this);
}