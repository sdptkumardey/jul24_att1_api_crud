/// name : "2018_07_17_16_19_33_alok-shah.jpg"

class SubBirthDayApi4 {
  SubBirthDayApi4({
      String? name,}){
    _name = name;
}

  SubBirthDayApi4.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;
SubBirthDayApi4 copyWith({  String? name,
}) => SubBirthDayApi4(  name: name ?? _name,
);
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }

}