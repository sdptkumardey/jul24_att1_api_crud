/// mjf : "PMJF"
/// list_name : [{"member":50,"membership_no":"973589","name":"Lion Nirmal   Gidra","mjf_date":"14/06/2023","pmjf_date":"14/06/2023","num_link":1},{"member":76,"membership_no":"1081605","name":"Lion Srawan  Chowdhury","mjf_date":"14/06/2023","pmjf_date":"14/06/2023","num_link":1},{"member":82,"membership_no":"968492","name":"Lion Suresh  Dhanotia","mjf_date":"22/10/2007","pmjf_date":"22/10/2007","num_link":1}]

class SubMjf2 {
  SubMjf2({
      String? mjf, 
      List<ListName>? listName,}){
    _mjf = mjf;
    _listName = listName;
}

  SubMjf2.fromJson(dynamic json) {
    _mjf = json['mjf'];
    if (json['list_name'] != null) {
      _listName = [];
      json['list_name'].forEach((v) {
        _listName?.add(ListName.fromJson(v));
      });
    }
  }
  String? _mjf;
  List<ListName>? _listName;
SubMjf2 copyWith({  String? mjf,
  List<ListName>? listName,
}) => SubMjf2(  mjf: mjf ?? _mjf,
  listName: listName ?? _listName,
);
  String? get mjf => _mjf;
  List<ListName>? get listName => _listName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mjf'] = _mjf;
    if (_listName != null) {
      map['list_name'] = _listName?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// member : 50
/// membership_no : "973589"
/// name : "Lion Nirmal   Gidra"
/// mjf_date : "14/06/2023"
/// pmjf_date : "14/06/2023"
/// num_link : 1

class ListName {
  ListName({
      num? member, 
      String? membershipNo, 
      String? name, 
      String? mjfDate, 
      String? pmjfDate, 
      num? numLink,}){
    _member = member;
    _membershipNo = membershipNo;
    _name = name;
    _mjfDate = mjfDate;
    _pmjfDate = pmjfDate;
    _numLink = numLink;
}

  ListName.fromJson(dynamic json) {
    _member = json['member'];
    _membershipNo = json['membership_no'];
    _name = json['name'];
    _mjfDate = json['mjf_date'];
    _pmjfDate = json['pmjf_date'];
    _numLink = json['num_link'];
  }
  num? _member;
  String? _membershipNo;
  String? _name;
  String? _mjfDate;
  String? _pmjfDate;
  num? _numLink;
ListName copyWith({  num? member,
  String? membershipNo,
  String? name,
  String? mjfDate,
  String? pmjfDate,
  num? numLink,
}) => ListName(  member: member ?? _member,
  membershipNo: membershipNo ?? _membershipNo,
  name: name ?? _name,
  mjfDate: mjfDate ?? _mjfDate,
  pmjfDate: pmjfDate ?? _pmjfDate,
  numLink: numLink ?? _numLink,
);
  num? get member => _member;
  String? get membershipNo => _membershipNo;
  String? get name => _name;
  String? get mjfDate => _mjfDate;
  String? get pmjfDate => _pmjfDate;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member'] = _member;
    map['membership_no'] = _membershipNo;
    map['name'] = _name;
    map['mjf_date'] = _mjfDate;
    map['pmjf_date'] = _pmjfDate;
    map['num_link'] = _numLink;
    return map;
  }

}