/// banner_url : "2018_08_02_13_30_00_main.jpg"
/// title : "ANNAPURNA RASOI. DATE : 30th July 2018"

class EventApi {
  EventApi({
      String? bannerUrl, 
      String? title,}){
    _bannerUrl = bannerUrl;
    _title = title;
}

  EventApi.fromJson(dynamic json) {
    _bannerUrl = json['banner_url'];
    _title = json['title'];
  }
  String? _bannerUrl;
  String? _title;
EventApi copyWith({  String? bannerUrl,
  String? title,
}) => EventApi(  bannerUrl: bannerUrl ?? _bannerUrl,
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