/// id : 150
/// name : "PST & Upcoming Leaders"
/// member_post_arr : [{"member_post":407,"name":"PRESIDENT","member_post_person":[{"member":2,"full_name":"Lion Ajay   Dhanotiwala","num_link":1}]},{"member_post":408,"name":"IMMEDIATE PAST PRESIDENT","member_post_person":[{"member":29,"full_name":"Lion Kamlesh  Gilra","num_link":1}]},{"member_post":533,"name":"SECRETARY","member_post_person":[{"member":275,"full_name":"Lion Ajay Kumar Deora","num_link":1}]},{"member_post":534,"name":"TREASURER","member_post_person":[{"member":290,"full_name":"Lion Manoj  Goyal","num_link":0}]},{"member_post":409,"name":"VICE PRESIDENT (1ST) / GLT","member_post_person":[{"member":36,"full_name":"Lion Manish  Agarwala","num_link":1}]},{"member_post":411,"name":"VICE PRESIDENT (2ND)","member_post_person":[{"member":262,"full_name":"Lion Shyam  Agarwal","num_link":1}]},{"member_post":412,"name":"VICE PRESIDENT (3RD)","member_post_person":[{"member":28,"full_name":"Lion Kamal Singh Kundalia","num_link":1}]}]

class ListOfCommitteeApi {
  ListOfCommitteeApi({
      num? id, 
      String? name, 
      List<MemberPostArr>? memberPostArr,}){
    _id = id;
    _name = name;
    _memberPostArr = memberPostArr;
}

  ListOfCommitteeApi.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    if (json['member_post_arr'] != null) {
      _memberPostArr = [];
      json['member_post_arr'].forEach((v) {
        _memberPostArr?.add(MemberPostArr.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  List<MemberPostArr>? _memberPostArr;
ListOfCommitteeApi copyWith({  num? id,
  String? name,
  List<MemberPostArr>? memberPostArr,
}) => ListOfCommitteeApi(  id: id ?? _id,
  name: name ?? _name,
  memberPostArr: memberPostArr ?? _memberPostArr,
);
  num? get id => _id;
  String? get name => _name;
  List<MemberPostArr>? get memberPostArr => _memberPostArr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_memberPostArr != null) {
      map['member_post_arr'] = _memberPostArr?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// member_post : 407
/// name : "PRESIDENT"
/// member_post_person : [{"member":2,"full_name":"Lion Ajay   Dhanotiwala","num_link":1}]

class MemberPostArr {
  MemberPostArr({
      num? memberPost, 
      String? name, 
      List<MemberPostPerson>? memberPostPerson,}){
    _memberPost = memberPost;
    _name = name;
    _memberPostPerson = memberPostPerson;
}

  MemberPostArr.fromJson(dynamic json) {
    _memberPost = json['member_post'];
    _name = json['name'];
    if (json['member_post_person'] != null) {
      _memberPostPerson = [];
      json['member_post_person'].forEach((v) {
        _memberPostPerson?.add(MemberPostPerson.fromJson(v));
      });
    }
  }
  num? _memberPost;
  String? _name;
  List<MemberPostPerson>? _memberPostPerson;
MemberPostArr copyWith({  num? memberPost,
  String? name,
  List<MemberPostPerson>? memberPostPerson,
}) => MemberPostArr(  memberPost: memberPost ?? _memberPost,
  name: name ?? _name,
  memberPostPerson: memberPostPerson ?? _memberPostPerson,
);
  num? get memberPost => _memberPost;
  String? get name => _name;
  List<MemberPostPerson>? get memberPostPerson => _memberPostPerson;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_post'] = _memberPost;
    map['name'] = _name;
    if (_memberPostPerson != null) {
      map['member_post_person'] = _memberPostPerson?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// member : 2
/// full_name : "Lion Ajay   Dhanotiwala"
/// num_link : 1

class MemberPostPerson {
  MemberPostPerson({
      num? member, 
      String? fullName, 
      num? numLink,}){
    _member = member;
    _fullName = fullName;
    _numLink = numLink;
}

  MemberPostPerson.fromJson(dynamic json) {
    _member = json['member'];
    _fullName = json['full_name'];
    _numLink = json['num_link'];
  }
  num? _member;
  String? _fullName;
  num? _numLink;
MemberPostPerson copyWith({  num? member,
  String? fullName,
  num? numLink,
}) => MemberPostPerson(  member: member ?? _member,
  fullName: fullName ?? _fullName,
  numLink: numLink ?? _numLink,
);
  num? get member => _member;
  String? get fullName => _fullName;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member'] = _member;
    map['full_name'] = _fullName;
    map['num_link'] = _numLink;
    return map;
  }

}