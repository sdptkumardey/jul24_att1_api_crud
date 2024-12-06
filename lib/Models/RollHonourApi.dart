/// id : 30
/// name : "1990\r\n-\r\n 1991"
/// member_post_arr : [{"member_post":78,"name":"President","member":12,"full_name":"Lion Ashok Kr. Sharma","num_link":1},{"member_post":79,"name":"Secretary","member":42,"full_name":"Lion Naresh  Periwal","num_link":1},{"member_post":80,"name":"Treasurer","member":21,"full_name":"Lion Dilip  Saraf","num_link":1}]

class RollHonourApi {
  RollHonourApi({
      num? id, 
      String? name, 
      List<MemberPostArr>? memberPostArr,}){
    _id = id;
    _name = name;
    _memberPostArr = memberPostArr;
}

  RollHonourApi.fromJson(dynamic json) {
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
RollHonourApi copyWith({  num? id,
  String? name,
  List<MemberPostArr>? memberPostArr,
}) => RollHonourApi(  id: id ?? _id,
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

/// member_post : 78
/// name : "President"
/// member : 12
/// full_name : "Lion Ashok Kr. Sharma"
/// num_link : 1

class MemberPostArr {
  MemberPostArr({
      num? memberPost, 
      String? name, 
      num? member, 
      String? fullName, 
      num? numLink,}){
    _memberPost = memberPost;
    _name = name;
    _member = member;
    _fullName = fullName;
    _numLink = numLink;
}

  MemberPostArr.fromJson(dynamic json) {
    _memberPost = json['member_post'];
    _name = json['name'];
    _member = json['member'];
    _fullName = json['full_name'];
    _numLink = json['num_link'];
  }
  num? _memberPost;
  String? _name;
  num? _member;
  String? _fullName;
  num? _numLink;
MemberPostArr copyWith({  num? memberPost,
  String? name,
  num? member,
  String? fullName,
  num? numLink,
}) => MemberPostArr(  memberPost: memberPost ?? _memberPost,
  name: name ?? _name,
  member: member ?? _member,
  fullName: fullName ?? _fullName,
  numLink: numLink ?? _numLink,
);
  num? get memberPost => _memberPost;
  String? get name => _name;
  num? get member => _member;
  String? get fullName => _fullName;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_post'] = _memberPost;
    map['name'] = _name;
    map['member'] = _member;
    map['full_name'] = _fullName;
    map['num_link'] = _numLink;
    return map;
  }

}