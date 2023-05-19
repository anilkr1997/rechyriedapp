import 'package:json_annotation/json_annotation.dart';

import 'Feederdata.dart';

part 'UserFeederline.g.dart';

@JsonSerializable()
class UserFeederline {
  @JsonKey(name: "Message")
  String? message;
  @JsonKey(name: "Data")
  List<Feederdata>? data;

  UserFeederline({this.data, this.message});

  factory UserFeederline.fromJson(Map<String, dynamic> json) =>
      _$UserFeederlineFromJson(json);

  Map<String, dynamic> toJson() => _$UserFeederlineToJson(this);
}
