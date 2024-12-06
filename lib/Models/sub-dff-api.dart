/// diamond_name : "SIX DIAMOND DFF MEMBERS"
/// diamond_no : 6
/// list_name : [{"count":"1","membership_no":"3221239","name":"Lion Mahesh  Kumar","diamond_date":"2021-22"}]

class SubDffApi {
  SubDffApi({
      String? diamondName, 
      num? diamondNo, 
      List<ListName>? listName,}){
    _diamondName = diamondName;
    _diamondNo = diamondNo;
    _listName = listName;
}

  SubDffApi.fromJson(dynamic json) {
    _diamondName = json['diamond_name'];
    _diamondNo = json['diamond_no'];
    if (json['list_name'] != null) {
      _listName = [];
      json['list_name'].forEach((v) {
        _listName?.add(ListName.fromJson(v));
      });
    }
  }
  String? _diamondName;
  num? _diamondNo;
  List<ListName>? _listName;
SubDffApi copyWith({  String? diamondName,
  num? diamondNo,
  List<ListName>? listName,
}) => SubDffApi(  diamondName: diamondName ?? _diamondName,
  diamondNo: diamondNo ?? _diamondNo,
  listName: listName ?? _listName,
);
  String? get diamondName => _diamondName;
  num? get diamondNo => _diamondNo;
  List<ListName>? get listName => _listName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['diamond_name'] = _diamondName;
    map['diamond_no'] = _diamondNo;
    if (_listName != null) {
      map['list_name'] = _listName?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// count : "1"
/// membership_no : "3221239"
/// name : "Lion Mahesh  Kumar"
/// diamond_date : "2021-22"

class ListName {
  ListName({
      String? count, 
      String? membershipNo, 
      String? name, 
      String? diamondDate,}){
    _count = count;
    _membershipNo = membershipNo;
    _name = name;
    _diamondDate = diamondDate;
}

  ListName.fromJson(dynamic json) {
    _count = json['count'];
    _membershipNo = json['membership_no'];
    _name = json['name'];
    _diamondDate = json['diamond_date'];
  }
  String? _count;
  String? _membershipNo;
  String? _name;
  String? _diamondDate;
ListName copyWith({  String? count,
  String? membershipNo,
  String? name,
  String? diamondDate,
}) => ListName(  count: count ?? _count,
  membershipNo: membershipNo ?? _membershipNo,
  name: name ?? _name,
  diamondDate: diamondDate ?? _diamondDate,
);
  String? get count => _count;
  String? get membershipNo => _membershipNo;
  String? get name => _name;
  String? get diamondDate => _diamondDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['membership_no'] = _membershipNo;
    map['name'] = _name;
    map['diamond_date'] = _diamondDate;
    return map;
  }

}