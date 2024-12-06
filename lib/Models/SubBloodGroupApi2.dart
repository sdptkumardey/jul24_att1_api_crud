/// blood_group : "O+"
/// blood_group_name : "O Positive"
/// list_name : [{"member":3,"name":"Lion Ajay  Garg","num_link":1},{"member":6,"name":"Lion Alok  Shah","num_link":1},{"member":7,"name":"Lion Anil   Goyal (Sagar)","num_link":1},{"member":8,"name":"Lion Anil   Goyal (PW)","num_link":1},{"member":445,"name":"Lion Anuj  Poddar","num_link":1},{"member":9,"name":"Lion Arun   Periwal","num_link":1},{"member":12,"name":"Lion Ashok Kr. Sharma","num_link":1},{"member":13,"name":"Lion Ashok  Sinhal","num_link":1},{"member":15,"name":"Lion Basant  Berlia","num_link":1},{"member":19,"name":"Lion Biswanath  Das","num_link":1},{"member":20,"name":"Lion Dhanpat  Jain","num_link":1},{"member":277,"name":"Lion Dr. Bijay   Kr Agarwal","num_link":1},{"member":279,"name":"Lion Hemant  Agarwal","num_link":1},{"member":446,"name":"Lion Hiralal   Agarwal","num_link":1},{"member":29,"name":"Lion Kamlesh  Gilra","num_link":1},{"member":35,"name":"Lion Mahesh  Kumar","num_link":1},{"member":36,"name":"Lion Manish  Agarwala","num_link":1},{"member":38,"name":"Lion Mukesh  Singhal","num_link":1},{"member":44,"name":"Lion Naresh  Sinhal","num_link":1},{"member":283,"name":"Lion Navin  Saria","num_link":1},{"member":213,"name":"Lion Nawal Kishore Goyal","num_link":1},{"member":47,"name":"Lion Niranjan  Dhirasaria","num_link":1},{"member":50,"name":"Lion Nirmal   Gidra","num_link":1},{"member":418,"name":"Lion Nitin  Agarwal","num_link":1},{"member":51,"name":"Lion Pawan  Agarwal","num_link":1},{"member":53,"name":"Lion Pawan  Jajodia","num_link":1},{"member":287,"name":"Lion Prabhu Dayal  Agarwal","num_link":1},{"member":56,"name":"Lion Raj Kumar  Agarwal","num_link":1},{"member":57,"name":"Lion Rajesh  Agarwal","num_link":1},{"member":60,"name":"Lion Ramesh  Jhawar","num_link":1},{"member":65,"name":"Lion Sandip  Killa","num_link":1},{"member":69,"name":"Lion Sanjay  Goyal","num_link":1},{"member":73,"name":"Lion Shashak  Banka","num_link":1},{"member":74,"name":"Lion Shashi   Jain","num_link":1},{"member":80,"name":"Lion Surendra  Kumar  Agarwal","num_link":1},{"member":83,"name":"Lion Sushil  Bajla","num_link":1},{"member":87,"name":"Lion Vikash  Bansal","num_link":1},{"member":443,"name":"Lion Yogesh  Goel ","num_link":1}]

class SubBloodGroupApi2 {
  SubBloodGroupApi2({
      String? bloodGroup, 
      String? bloodGroupName, 
      List<ListName>? listName,}){
    _bloodGroup = bloodGroup;
    _bloodGroupName = bloodGroupName;
    _listName = listName;
}

  SubBloodGroupApi2.fromJson(dynamic json) {
    _bloodGroup = json['blood_group'];
    _bloodGroupName = json['blood_group_name'];
    if (json['list_name'] != null) {
      _listName = [];
      json['list_name'].forEach((v) {
        _listName?.add(ListName.fromJson(v));
      });
    }
  }
  String? _bloodGroup;
  String? _bloodGroupName;
  List<ListName>? _listName;
SubBloodGroupApi2 copyWith({  String? bloodGroup,
  String? bloodGroupName,
  List<ListName>? listName,
}) => SubBloodGroupApi2(  bloodGroup: bloodGroup ?? _bloodGroup,
  bloodGroupName: bloodGroupName ?? _bloodGroupName,
  listName: listName ?? _listName,
);
  String? get bloodGroup => _bloodGroup;
  String? get bloodGroupName => _bloodGroupName;
  List<ListName>? get listName => _listName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['blood_group'] = _bloodGroup;
    map['blood_group_name'] = _bloodGroupName;
    if (_listName != null) {
      map['list_name'] = _listName?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// member : 3
/// name : "Lion Ajay  Garg"
/// num_link : 1

class ListName {
  ListName({
      num? member, 
      String? name, 
      num? numLink,}){
    _member = member;
    _name = name;
    _numLink = numLink;
}

  ListName.fromJson(dynamic json) {
    _member = json['member'];
    _name = json['name'];
    _numLink = json['num_link'];
  }
  num? _member;
  String? _name;
  num? _numLink;
ListName copyWith({  num? member,
  String? name,
  num? numLink,
}) => ListName(  member: member ?? _member,
  name: name ?? _name,
  numLink: numLink ?? _numLink,
);
  num? get member => _member;
  String? get name => _name;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member'] = _member;
    map['name'] = _name;
    map['num_link'] = _numLink;
    return map;
  }

}