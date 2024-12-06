// To parse this JSON data, do
//
//     final subBirthDayApi3 = subBirthDayApi3FromJson(jsonString);

import 'dart:convert';

List<SubBirthDayApi3> subBirthDayApi3FromJson(String str) => List<SubBirthDayApi3>.from(json.decode(str).map((x) => SubBirthDayApi3.fromJson(x)));

String subBirthDayApi3ToJson(List<SubBirthDayApi3> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubBirthDayApi3 {
  String name;

  SubBirthDayApi3({
    required this.name,
  });

  factory SubBirthDayApi3.fromJson(Map<String, dynamic> json) => SubBirthDayApi3(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
