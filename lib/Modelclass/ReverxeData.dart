// import 'dart:core';
// import 'package:flutter/foundation.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// @JsonSerializable()
// class ReverxData {
//     String? discom_code;
//     String? discom_name;
//     String? district_code;
//     String? district_name;
//     String? state_code;
//     String? state_name;
//     String? vil_code;
//     String? village_name;
//
//     ReverxData({  this.discom_code, this.discom_name, this.district_code, this.district_name, this.state_code, this.state_name, this.vil_code, this.village_name});
//
//     factory ReverxData.fromJson(Map<String, dynamic> json) {
//         return ReverxData(
//             discom_code: json['discom_code'],
//             discom_name: json['discom_name'],
//             district_code: json['district_code'],
//             district_name: json['district_name'],
//             state_code: json['state_code'],
//             state_name: json['state_name'],
//             vil_code: json['vil_code'] ,
//             village_name: json['village_name'],
//         );
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['discom_code'] = this.discom_code;
//         data['discom_name'] = this.discom_name;
//         data['district_code'] = this.district_code;
//         data['district_name'] = this.district_name;
//         data['state_code'] = this.state_code;
//         data['state_name'] = this.state_name;
//         data['vil_code'] = this.vil_code;
//         data['village_name'] = this.village_name;
//         return data;
//     }
// }