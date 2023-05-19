import 'package:json_annotation/json_annotation.dart';
import 'dart:core';
import 'Feederlist.dart';
part 'Feedername.g.dart';

@JsonSerializable()
class Feedername {
  @JsonKey(name: "Message")
  String? message;
  @JsonKey(name: "Data")
  List<Feederlist>? data;

  Feedername(this.message, this.data);
  factory Feedername.fromJson(Map<String, dynamic> json)  => _$FeedernameFromJson(json);

  Map<String, dynamic> toJson() => _$FeedernameToJson(this);
}


