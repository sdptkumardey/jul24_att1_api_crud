/// member : 288
/// img_url : "https://morehost.co.in/app/upload_image/member/2024_06_03_18_55_26_100.jpg"
/// post_name : "Honorary Members"
/// full_name : "Lion Sulochana  Mansi Jajodia"
/// membership_no : "5875365"
/// num_link : 0

class HonoraryMembersApi {
  HonoraryMembersApi({
      num? member, 
      String? imgUrl, 
      String? postName, 
      String? fullName, 
      String? membershipNo, 
      num? numLink,}){
    _member = member;
    _imgUrl = imgUrl;
    _postName = postName;
    _fullName = fullName;
    _membershipNo = membershipNo;
    _numLink = numLink;
}

  HonoraryMembersApi.fromJson(dynamic json) {
    _member = json['member'];
    _imgUrl = json['img_url'];
    _postName = json['post_name'];
    _fullName = json['full_name'];
    _membershipNo = json['membership_no'];
    _numLink = json['num_link'];
  }
  num? _member;
  String? _imgUrl;
  String? _postName;
  String? _fullName;
  String? _membershipNo;
  num? _numLink;
HonoraryMembersApi copyWith({  num? member,
  String? imgUrl,
  String? postName,
  String? fullName,
  String? membershipNo,
  num? numLink,
}) => HonoraryMembersApi(  member: member ?? _member,
  imgUrl: imgUrl ?? _imgUrl,
  postName: postName ?? _postName,
  fullName: fullName ?? _fullName,
  membershipNo: membershipNo ?? _membershipNo,
  numLink: numLink ?? _numLink,
);
  num? get member => _member;
  String? get imgUrl => _imgUrl;
  String? get postName => _postName;
  String? get fullName => _fullName;
  String? get membershipNo => _membershipNo;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member'] = _member;
    map['img_url'] = _imgUrl;
    map['post_name'] = _postName;
    map['full_name'] = _fullName;
    map['membership_no'] = _membershipNo;
    map['num_link'] = _numLink;
    return map;
  }

}