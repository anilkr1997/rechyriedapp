import 'package:json_annotation/json_annotation.dart';
part 'Feederdata.g.dart';
@JsonSerializable()
class Feederdata {
    @JsonKey(name:"created_by")
    String? created_by;
    @JsonKey(name:"end_")
    String? end_;
    @JsonKey(name:"feeder_name")
    String? feeder_name;
    @JsonKey(name:"id")
    int? id;
    @JsonKey(name:"plan")
    String? plan;
    @JsonKey(name:"st_asgeojson")
    String? st_asgeojson;
    @JsonKey(name:"start_")
    String? start_;





    Feederdata({this.created_by, this.end_, this.feeder_name, this.id, this.plan, this.st_asgeojson, this.start_});

    factory Feederdata.fromJson(Map<String, dynamic> json) => _$FeederdataFromJson(json);

    Map<String, dynamic> toJson() =>_$FeederdataToJson(this);
}