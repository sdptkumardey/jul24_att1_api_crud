/// id : 1
/// name : "Lion Ajay  Agarwal MK"
/// mobile : "9434045375"
/// img_url : "https://morehost.co.in/app/upload_image/member/2024_06_01_17_04_51_1.jpg"

class MembersDirectoryApi {
  MembersDirectoryApi({
      num? id, 
      String? name, 
      String? mobile, 
      String? imgUrl,}){
    _id = id;
    _name = name;
    _mobile = mobile;
    _imgUrl = imgUrl;
}

  MembersDirectoryApi.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mobile = json['mobile'];
    _imgUrl = json['img_url'];
  }
  num? _id;
  String? _name;
  String? _mobile;
  String? _imgUrl;
MembersDirectoryApi copyWith({  num? id,
  String? name,
  String? mobile,
  String? imgUrl,
}) => MembersDirectoryApi(  id: id ?? _id,
  name: name ?? _name,
  mobile: mobile ?? _mobile,
  imgUrl: imgUrl ?? _imgUrl,
);
  num? get id => _id;
  String? get name => _name;
  String? get mobile => _mobile;
  String? get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['mobile'] = _mobile;
    map['img_url'] = _imgUrl;
    return map;
  }

}