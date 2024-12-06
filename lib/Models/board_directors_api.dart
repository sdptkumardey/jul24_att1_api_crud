/// member : 2
/// img_url : "https://morehost.co.in/app/upload_image/member/2024_06_01_17_06_00_2.jpg"
/// post_name : "PRESIDENT"
/// full_name : "Lion Ajay   Dhanotiwala"
/// num_link : 1

class BoardDirectorsApi {
  BoardDirectorsApi({
      num? member, 
      String? imgUrl, 
      String? postName, 
      String? fullName, 
      num? numLink,}){
    _member = member;
    _imgUrl = imgUrl;
    _postName = postName;
    _fullName = fullName;
    _numLink = numLink;
}

  BoardDirectorsApi.fromJson(dynamic json) {
    _member = json['member'];
    _imgUrl = json['img_url'];
    _postName = json['post_name'];
    _fullName = json['full_name'];
    _numLink = json['num_link'];
  }
  num? _member;
  String? _imgUrl;
  String? _postName;
  String? _fullName;
  num? _numLink;
BoardDirectorsApi copyWith({  num? member,
  String? imgUrl,
  String? postName,
  String? fullName,
  num? numLink,
}) => BoardDirectorsApi(  member: member ?? _member,
  imgUrl: imgUrl ?? _imgUrl,
  postName: postName ?? _postName,
  fullName: fullName ?? _fullName,
  numLink: numLink ?? _numLink,
);
  num? get member => _member;
  String? get imgUrl => _imgUrl;
  String? get postName => _postName;
  String? get fullName => _fullName;
  num? get numLink => _numLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member'] = _member;
    map['img_url'] = _imgUrl;
    map['post_name'] = _postName;
    map['full_name'] = _fullName;
    map['num_link'] = _numLink;
    return map;
  }

}