/// img_url : "../upload_image/activity/2018_08_02_13_30_132.jpg"

class EventDetApi {
  EventDetApi({
      String? imgUrl,}){
    _imgUrl = imgUrl;
}

  EventDetApi.fromJson(dynamic json) {
    _imgUrl = json['img_url'];
  }
  String? _imgUrl;
EventDetApi copyWith({  String? imgUrl,
}) => EventDetApi(  imgUrl: imgUrl ?? _imgUrl,
);
  String? get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['img_url'] = _imgUrl;
    return map;
  }

}