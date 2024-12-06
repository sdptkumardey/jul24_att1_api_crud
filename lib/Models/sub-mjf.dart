/// mjf : "PMJF"
/// list_name : [{"membership_no":"973589","name":"Lion Nirmal   Gidra","mjf_date":"19/07/2001","pmjf_date":"14/06/2023"},{"membership_no":"1081605","name":"Lion Srawan  Chowdhury","mjf_date":"13/08/2007","pmjf_date":"14/06/2023"},{"membership_no":"968492","name":"Lion Suresh  Dhanotia","mjf_date":"17/08/2007","pmjf_date":"22/10/2007"}]

class SubMjf {
  SubMjf({
      String? mjf, 
      List<ListName>? listName,}){
    _mjf = mjf;
    _listName = listName;
}

  SubMjf.fromJson(dynamic json) {
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
SubMjf copyWith({  String? mjf,
  List<ListName>? listName,
}) => SubMjf(  mjf: mjf ?? _mjf,
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

/// membership_no : "973589"
/// name : "Lion Nirmal   Gidra"
/// mjf_date : "19/07/2001"
/// pmjf_date : "14/06/2023"

class ListName {
  ListName({
      String? membershipNo, 
      String? name, 
      String? mjfDate, 
      String? pmjfDate,}){
    _membershipNo = membershipNo;
    _name = name;
    _mjfDate = mjfDate;
    _pmjfDate = pmjfDate;
}

  ListName.fromJson(dynamic json) {
    _membershipNo = json['membership_no'];
    _name = json['name'];
    _mjfDate = json['mjf_date'];
    _pmjfDate = json['pmjf_date'];
  }
  String? _membershipNo;
  String? _name;
  String? _mjfDate;
  String? _pmjfDate;
ListName copyWith({  String? membershipNo,
  String? name,
  String? mjfDate,
  String? pmjfDate,
}) => ListName(  membershipNo: membershipNo ?? _membershipNo,
  name: name ?? _name,
  mjfDate: mjfDate ?? _mjfDate,
  pmjfDate: pmjfDate ?? _pmjfDate,
);
  String? get membershipNo => _membershipNo;
  String? get name => _name;
  String? get mjfDate => _mjfDate;
  String? get pmjfDate => _pmjfDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['membership_no'] = _membershipNo;
    map['name'] = _name;
    map['mjf_date'] = _mjfDate;
    map['pmjf_date'] = _pmjfDate;
    return map;
  }

}