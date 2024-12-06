/// blood_group : "O+"
/// blood_group_name : "O Positive"
/// list_name : [{"name":"Lion Ajay  Garg"},{"name":"Lion Alok  Shah"},{"name":"Lion Anil   Goyal (Sagar)"},{"name":"Lion Anil   Goyal (PW)"},{"name":"Lion Anuj  Poddar"},{"name":"Lion Arun   Periwal"},{"name":"Lion Ashok Kr. Sharma"},{"name":"Lion Ashok  Sinhal"},{"name":"Lion Basant  Berlia"},{"name":"Lion Biswanath  Das"},{"name":"Lion Dhanpat  Jain"},{"name":"Lion Dr. Bijay   Kr Agarwal"},{"name":"Lion Hemant  Agarwal"},{"name":"Lion Hiralal   Agarwal"},{"name":"Lion Kamlesh  Gilra"},{"name":"Lion Mahesh  Kumar"},{"name":"Lion Manish  Agarwala"},{"name":"Lion Mukesh  Singhal"},{"name":"Lion Naresh  Sinhal"},{"name":"Lion Navin  Saria"},{"name":"Lion Nawal Kishore Goyal"},{"name":"Lion Niranjan  Dhirasaria"},{"name":"Lion Nirmal   Gidra"},{"name":"Lion Nitin  Agarwal"},{"name":"Lion Pawan  Agarwal"},{"name":"Lion Pawan  Jajodia"},{"name":"Lion Prabhu Dayal  Agarwal"},{"name":"Lion Raj Kumar  Agarwal"},{"name":"Lion Rajesh  Agarwal"},{"name":"Lion Ramesh  Jhawar"},{"name":"Lion Sandip  Killa"},{"name":"Lion Sanjay  Goyal"},{"name":"Lion Shashak  Banka"},{"name":"Lion Shashi   Jain"},{"name":"Lion Surendra  Kumar  Agarwal"},{"name":"Lion Sushil  Bajla"},{"name":"Lion Vikash  Bansal"},{"name":"Lion Yogesh  Goel "}]

class SubBloodGroupApi {
  SubBloodGroupApi({
      String? bloodGroup, 
      String? bloodGroupName, 
      List<ListName>? listName,}){
    _bloodGroup = bloodGroup;
    _bloodGroupName = bloodGroupName;
    _listName = listName;
}

  SubBloodGroupApi.fromJson(dynamic json) {
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
SubBloodGroupApi copyWith({  String? bloodGroup,
  String? bloodGroupName,
  List<ListName>? listName,
}) => SubBloodGroupApi(  bloodGroup: bloodGroup ?? _bloodGroup,
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

/// name : "Lion Ajay  Garg"

class ListName {
  ListName({
      String? name,}){
    _name = name;
}

  ListName.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;
ListName copyWith({  String? name,
}) => ListName(  name: name ?? _name,
);
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }

}