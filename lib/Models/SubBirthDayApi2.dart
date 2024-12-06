class SubBirthDayApi2 {
  String? name;
  List<ImgArr>? imgArr;
  List<Data>? data;

  SubBirthDayApi2({this.name, this.imgArr, this.data});

  SubBirthDayApi2.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['img_arr'] != null) {
      imgArr = <ImgArr>[];
      json['img_arr'].forEach((v) {
        imgArr!.add(new ImgArr.fromJson(v));
      });
    }
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.imgArr != null) {
      data['img_arr'] = this.imgArr!.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImgArr {
  String? name;

  ImgArr({this.name});

  ImgArr.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class Data {
  String? monthName;
  bool? display;
  List<DayArr>? dayArr;

  Data({this.monthName, this.display, this.dayArr});

  Data.fromJson(Map<String, dynamic> json) {
    monthName = json['month_name'];
    display = json['display'];
    if (json['day_arr'] != null) {
      dayArr = <DayArr>[];
      json['day_arr'].forEach((v) {
        dayArr!.add(new DayArr.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['month_name'] = this.monthName;
    data['display'] = this.display;
    if (this.dayArr != null) {
      data['day_arr'] = this.dayArr!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DayArr {
  int? day;
  List<BirthArr>? birthArr;

  DayArr({this.day, this.birthArr});

  DayArr.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    if (json['birth_arr'] != null) {
      birthArr = <BirthArr>[];
      json['birth_arr'].forEach((v) {
        birthArr!.add(new BirthArr.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    if (this.birthArr != null) {
      data['birth_arr'] = this.birthArr!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BirthArr {
  String? type;
  int? member;
  String? name;
  String? wifeName;
  int? numLink;

  BirthArr({this.type, this.member, this.name, this.wifeName, this.numLink});

  BirthArr.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    member = json['member'];
    name = json['name'];
    wifeName = json['wife_name'];
    numLink = json['num_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['member'] = this.member;
    data['name'] = this.name;
    data['wife_name'] = this.wifeName;
    data['num_link'] = this.numLink;
    return data;
  }
}
