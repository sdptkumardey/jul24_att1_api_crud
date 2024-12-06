/// member_post : 620
/// name : "2004-05"
/// description : "Udaan"
/// member : 14
/// full_name : "Lion Atul  Jhawar"
/// num_link : 1

class SubSloganApi {
  SubSloganApi({
      num? memberPost, 
      String? name, 
      String? description, 
      num? member, 
      String? fullName, 
      num? numLink,}){
    _memberPost = memberPost;
    _name = name;
    _description = description;
    _member = member;
    _fullName = fullName;
    _numLink = numLink;
}

  SubSloganApi.fromJson(dynamic json) {
    _memberPost = json['member_post'];
    _name = json['name'];
    _description = json['description'];
    _member = json['member'];
    _fullName = json['full_name'];
    _numLink = json['num_link'];
  }
  num? _memberPost;
  String? _name;
  String? _description;
  num? _member;
  String? _fullName;
  num? _numLink;
SubSloganApi copyWith({  num? memberPost,
  String? name,
  String? description,
  num? member,
  String? fullName,
  num? numLink,
}) => SubSloganApi(  memberPost: memberPost ?? _memberPost,
  name: name ?? _name,
  description: description ?? _description,
  member: member ?? _member,
  fullName: fullName ?? _fullName,
  numLink: numLink ?? _numLink,
);
  num? get memberPost => _memberPost;
  String? get name => _name;
  String? get description => _description;
  num? get member => _member;
  String? get fullName => _fullName;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_post'] = _memberPost;
    map['name'] = _name;
    map['description'] = _description;
    map['member'] = _member;
    map['full_name'] = _fullName;
    map['num_link'] = _numLink;
    return map;
  }

}