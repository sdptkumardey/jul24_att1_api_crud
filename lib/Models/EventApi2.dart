/// id : 44
/// banner_url : "2018_08_02_13_30_00_main.jpg"
/// title : "ANNAPURNA RASOI. DATE : 30th July 2018"

class EventApi2 {
  EventApi2({
      num? id, 
      String? bannerUrl, 
      String? title,}){
    _id = id;
    _bannerUrl = bannerUrl;
    _title = title;
}

  EventApi2.fromJson(dynamic json) {
    _id = json['id'];
    _bannerUrl = json['banner_url'];
    _title = json['title'];
  }
  num? _id;
  String? _bannerUrl;
  String? _title;
EventApi2 copyWith({  num? id,
  String? bannerUrl,
  String? title,
}) => EventApi2(  id: id ?? _id,
  bannerUrl: bannerUrl ?? _bannerUrl,
  title: title ?? _title,
);
  num? get id => _id;
  String? get bannerUrl => _bannerUrl;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['banner_url'] = _bannerUrl;
    map['title'] = _title;
    return map;
  }

}