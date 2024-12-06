/// banner_url : "2018_08_02_13_30_00_main.jpg"
/// title : "ANNAPURNA RASOI. DATE : 30th July 2018"

class Event {
  Event({
      String? bannerUrl, 
      String? title,}){
    _bannerUrl = bannerUrl;
    _title = title;
}

  Event.fromJson(dynamic json) {
    _bannerUrl = json['banner_url'];
    _title = json['title'];
  }
  String? _bannerUrl;
  String? _title;
Event copyWith({  String? bannerUrl,
  String? title,
}) => Event(  bannerUrl: bannerUrl ?? _bannerUrl,
  title: title ?? _title,
);
  String? get bannerUrl => _bannerUrl;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_url'] = _bannerUrl;
    map['title'] = _title;
    return map;
  }

}