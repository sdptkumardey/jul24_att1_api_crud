/// id : 18
/// membership_type : "MJF"
/// diamond_type : "DOUBLE DIAMOND"
/// name : "Lion Binod  Jalan"
/// alias_name : ""
/// blood_group : "B-"
/// birth_date : "13 Dec"
/// marraige_date : "11 May"
/// membership_no : "973869"
/// joining : "CM"
/// occupation : "Catering"
/// office_address_company : "Celebration Inn Pvt. Ltd."
/// office_address_det : "Spencer Plaza, Burdwan Road"
/// office_city : "Siliguri"
/// office_pin : "734005"
/// office_phone : ""
/// resident_address : "2nd Floor, Opp. Madhu Shree Apartment, Vidyasagar Pally"
/// resident_address2 : ""
/// resident_address3 : ""
/// resident_city : "Siliguri"
/// resident_pin : "734005"
/// resident_phone : ""
/// mobile : "9434761741"
/// email : "bkjalan13@gmail.com"
/// spouse_name : "Lionade Kusum Jalan"
/// spouse_blood_group : "A+"
/// spouse_birth : "06 Jan"
/// spouse_mobile : "9434171741"
/// display_type : "1"
/// st : "1"
/// img_url : "2024_06_01_17_28_18_20.jpg"
/// birth_url : "2018_08_28_12_30_38_Binod-Jalan.jpg"
/// marraige_url : ""
/// login_st : "0"
/// password : "terai123"
/// lion_date : "1990-04-01"
/// mjf : "MJF"
/// mjf_date : "2015-09-28"
/// pmjf_date : "0000-00-00"
/// diamond_no : "2"
/// diamond_date : "2011"
/// blood_st : "1"
/// next : 260
/// previous : 17

class MemberDetailsApi {
  MemberDetailsApi({
      num? id, 
      String? membershipType, 
      String? diamondType, 
      String? name, 
      String? aliasName, 
      String? bloodGroup, 
      String? birthDate, 
      String? marraigeDate, 
      String? membershipNo, 
      String? joining, 
      String? occupation, 
      String? officeAddressCompany, 
      String? officeAddressDet, 
      String? officeCity, 
      String? officePin, 
      String? officePhone, 
      String? residentAddress, 
      String? residentAddress2, 
      String? residentAddress3, 
      String? residentCity, 
      String? residentPin, 
      String? residentPhone, 
      String? mobile, 
      String? email, 
      String? spouseName, 
      String? spouseBloodGroup, 
      String? spouseBirth, 
      String? spouseMobile, 
      String? displayType, 
      String? st, 
      String? imgUrl, 
      String? birthUrl, 
      String? marraigeUrl, 
      String? loginSt, 
      String? password, 
      String? lionDate, 
      String? mjf, 
      String? mjfDate, 
      String? pmjfDate, 
      String? diamondNo, 
      String? diamondDate, 
      String? bloodSt, 
      num? next, 
      num? previous,}){
    _id = id;
    _membershipType = membershipType;
    _diamondType = diamondType;
    _name = name;
    _aliasName = aliasName;
    _bloodGroup = bloodGroup;
    _birthDate = birthDate;
    _marraigeDate = marraigeDate;
    _membershipNo = membershipNo;
    _joining = joining;
    _occupation = occupation;
    _officeAddressCompany = officeAddressCompany;
    _officeAddressDet = officeAddressDet;
    _officeCity = officeCity;
    _officePin = officePin;
    _officePhone = officePhone;
    _residentAddress = residentAddress;
    _residentAddress2 = residentAddress2;
    _residentAddress3 = residentAddress3;
    _residentCity = residentCity;
    _residentPin = residentPin;
    _residentPhone = residentPhone;
    _mobile = mobile;
    _email = email;
    _spouseName = spouseName;
    _spouseBloodGroup = spouseBloodGroup;
    _spouseBirth = spouseBirth;
    _spouseMobile = spouseMobile;
    _displayType = displayType;
    _st = st;
    _imgUrl = imgUrl;
    _birthUrl = birthUrl;
    _marraigeUrl = marraigeUrl;
    _loginSt = loginSt;
    _password = password;
    _lionDate = lionDate;
    _mjf = mjf;
    _mjfDate = mjfDate;
    _pmjfDate = pmjfDate;
    _diamondNo = diamondNo;
    _diamondDate = diamondDate;
    _bloodSt = bloodSt;
    _next = next;
    _previous = previous;
}

  MemberDetailsApi.fromJson(dynamic json) {
    _id = json['id'];
    _membershipType = json['membership_type'];
    _diamondType = json['diamond_type'];
    _name = json['name'];
    _aliasName = json['alias_name'];
    _bloodGroup = json['blood_group'];
    _birthDate = json['birth_date'];
    _marraigeDate = json['marraige_date'];
    _membershipNo = json['membership_no'];
    _joining = json['joining'];
    _occupation = json['occupation'];
    _officeAddressCompany = json['office_address_company'];
    _officeAddressDet = json['office_address_det'];
    _officeCity = json['office_city'];
    _officePin = json['office_pin'];
    _officePhone = json['office_phone'];
    _residentAddress = json['resident_address'];
    _residentAddress2 = json['resident_address2'];
    _residentAddress3 = json['resident_address3'];
    _residentCity = json['resident_city'];
    _residentPin = json['resident_pin'];
    _residentPhone = json['resident_phone'];
    _mobile = json['mobile'];
    _email = json['email'];
    _spouseName = json['spouse_name'];
    _spouseBloodGroup = json['spouse_blood_group'];
    _spouseBirth = json['spouse_birth'];
    _spouseMobile = json['spouse_mobile'];
    _displayType = json['display_type'];
    _st = json['st'];
    _imgUrl = json['img_url'];
    _birthUrl = json['birth_url'];
    _marraigeUrl = json['marraige_url'];
    _loginSt = json['login_st'];
    _password = json['password'];
    _lionDate = json['lion_date'];
    _mjf = json['mjf'];
    _mjfDate = json['mjf_date'];
    _pmjfDate = json['pmjf_date'];
    _diamondNo = json['diamond_no'];
    _diamondDate = json['diamond_date'];
    _bloodSt = json['blood_st'];
    _next = json['next'];
    _previous = json['previous'];
  }
  num? _id;
  String? _membershipType;
  String? _diamondType;
  String? _name;
  String? _aliasName;
  String? _bloodGroup;
  String? _birthDate;
  String? _marraigeDate;
  String? _membershipNo;
  String? _joining;
  String? _occupation;
  String? _officeAddressCompany;
  String? _officeAddressDet;
  String? _officeCity;
  String? _officePin;
  String? _officePhone;
  String? _residentAddress;
  String? _residentAddress2;
  String? _residentAddress3;
  String? _residentCity;
  String? _residentPin;
  String? _residentPhone;
  String? _mobile;
  String? _email;
  String? _spouseName;
  String? _spouseBloodGroup;
  String? _spouseBirth;
  String? _spouseMobile;
  String? _displayType;
  String? _st;
  String? _imgUrl;
  String? _birthUrl;
  String? _marraigeUrl;
  String? _loginSt;
  String? _password;
  String? _lionDate;
  String? _mjf;
  String? _mjfDate;
  String? _pmjfDate;
  String? _diamondNo;
  String? _diamondDate;
  String? _bloodSt;
  num? _next;
  num? _previous;
MemberDetailsApi copyWith({  num? id,
  String? membershipType,
  String? diamondType,
  String? name,
  String? aliasName,
  String? bloodGroup,
  String? birthDate,
  String? marraigeDate,
  String? membershipNo,
  String? joining,
  String? occupation,
  String? officeAddressCompany,
  String? officeAddressDet,
  String? officeCity,
  String? officePin,
  String? officePhone,
  String? residentAddress,
  String? residentAddress2,
  String? residentAddress3,
  String? residentCity,
  String? residentPin,
  String? residentPhone,
  String? mobile,
  String? email,
  String? spouseName,
  String? spouseBloodGroup,
  String? spouseBirth,
  String? spouseMobile,
  String? displayType,
  String? st,
  String? imgUrl,
  String? birthUrl,
  String? marraigeUrl,
  String? loginSt,
  String? password,
  String? lionDate,
  String? mjf,
  String? mjfDate,
  String? pmjfDate,
  String? diamondNo,
  String? diamondDate,
  String? bloodSt,
  num? next,
  num? previous,
}) => MemberDetailsApi(  id: id ?? _id,
  membershipType: membershipType ?? _membershipType,
  diamondType: diamondType ?? _diamondType,
  name: name ?? _name,
  aliasName: aliasName ?? _aliasName,
  bloodGroup: bloodGroup ?? _bloodGroup,
  birthDate: birthDate ?? _birthDate,
  marraigeDate: marraigeDate ?? _marraigeDate,
  membershipNo: membershipNo ?? _membershipNo,
  joining: joining ?? _joining,
  occupation: occupation ?? _occupation,
  officeAddressCompany: officeAddressCompany ?? _officeAddressCompany,
  officeAddressDet: officeAddressDet ?? _officeAddressDet,
  officeCity: officeCity ?? _officeCity,
  officePin: officePin ?? _officePin,
  officePhone: officePhone ?? _officePhone,
  residentAddress: residentAddress ?? _residentAddress,
  residentAddress2: residentAddress2 ?? _residentAddress2,
  residentAddress3: residentAddress3 ?? _residentAddress3,
  residentCity: residentCity ?? _residentCity,
  residentPin: residentPin ?? _residentPin,
  residentPhone: residentPhone ?? _residentPhone,
  mobile: mobile ?? _mobile,
  email: email ?? _email,
  spouseName: spouseName ?? _spouseName,
  spouseBloodGroup: spouseBloodGroup ?? _spouseBloodGroup,
  spouseBirth: spouseBirth ?? _spouseBirth,
  spouseMobile: spouseMobile ?? _spouseMobile,
  displayType: displayType ?? _displayType,
  st: st ?? _st,
  imgUrl: imgUrl ?? _imgUrl,
  birthUrl: birthUrl ?? _birthUrl,
  marraigeUrl: marraigeUrl ?? _marraigeUrl,
  loginSt: loginSt ?? _loginSt,
  password: password ?? _password,
  lionDate: lionDate ?? _lionDate,
  mjf: mjf ?? _mjf,
  mjfDate: mjfDate ?? _mjfDate,
  pmjfDate: pmjfDate ?? _pmjfDate,
  diamondNo: diamondNo ?? _diamondNo,
  diamondDate: diamondDate ?? _diamondDate,
  bloodSt: bloodSt ?? _bloodSt,
  next: next ?? _next,
  previous: previous ?? _previous,
);
  num? get id => _id;
  String? get membershipType => _membershipType;
  String? get diamondType => _diamondType;
  String? get name => _name;
  String? get aliasName => _aliasName;
  String? get bloodGroup => _bloodGroup;
  String? get birthDate => _birthDate;
  String? get marraigeDate => _marraigeDate;
  String? get membershipNo => _membershipNo;
  String? get joining => _joining;
  String? get occupation => _occupation;
  String? get officeAddressCompany => _officeAddressCompany;
  String? get officeAddressDet => _officeAddressDet;
  String? get officeCity => _officeCity;
  String? get officePin => _officePin;
  String? get officePhone => _officePhone;
  String? get residentAddress => _residentAddress;
  String? get residentAddress2 => _residentAddress2;
  String? get residentAddress3 => _residentAddress3;
  String? get residentCity => _residentCity;
  String? get residentPin => _residentPin;
  String? get residentPhone => _residentPhone;
  String? get mobile => _mobile;
  String? get email => _email;
  String? get spouseName => _spouseName;
  String? get spouseBloodGroup => _spouseBloodGroup;
  String? get spouseBirth => _spouseBirth;
  String? get spouseMobile => _spouseMobile;
  String? get displayType => _displayType;
  String? get st => _st;
  String? get imgUrl => _imgUrl;
  String? get birthUrl => _birthUrl;
  String? get marraigeUrl => _marraigeUrl;
  String? get loginSt => _loginSt;
  String? get password => _password;
  String? get lionDate => _lionDate;
  String? get mjf => _mjf;
  String? get mjfDate => _mjfDate;
  String? get pmjfDate => _pmjfDate;
  String? get diamondNo => _diamondNo;
  String? get diamondDate => _diamondDate;
  String? get bloodSt => _bloodSt;
  num? get next => _next;
  num? get previous => _previous;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['membership_type'] = _membershipType;
    map['diamond_type'] = _diamondType;
    map['name'] = _name;
    map['alias_name'] = _aliasName;
    map['blood_group'] = _bloodGroup;
    map['birth_date'] = _birthDate;
    map['marraige_date'] = _marraigeDate;
    map['membership_no'] = _membershipNo;
    map['joining'] = _joining;
    map['occupation'] = _occupation;
    map['office_address_company'] = _officeAddressCompany;
    map['office_address_det'] = _officeAddressDet;
    map['office_city'] = _officeCity;
    map['office_pin'] = _officePin;
    map['office_phone'] = _officePhone;
    map['resident_address'] = _residentAddress;
    map['resident_address2'] = _residentAddress2;
    map['resident_address3'] = _residentAddress3;
    map['resident_city'] = _residentCity;
    map['resident_pin'] = _residentPin;
    map['resident_phone'] = _residentPhone;
    map['mobile'] = _mobile;
    map['email'] = _email;
    map['spouse_name'] = _spouseName;
    map['spouse_blood_group'] = _spouseBloodGroup;
    map['spouse_birth'] = _spouseBirth;
    map['spouse_mobile'] = _spouseMobile;
    map['display_type'] = _displayType;
    map['st'] = _st;
    map['img_url'] = _imgUrl;
    map['birth_url'] = _birthUrl;
    map['marraige_url'] = _marraigeUrl;
    map['login_st'] = _loginSt;
    map['password'] = _password;
    map['lion_date'] = _lionDate;
    map['mjf'] = _mjf;
    map['mjf_date'] = _mjfDate;
    map['pmjf_date'] = _pmjfDate;
    map['diamond_no'] = _diamondNo;
    map['diamond_date'] = _diamondDate;
    map['blood_st'] = _bloodSt;
    map['next'] = _next;
    map['previous'] = _previous;
    return map;
  }

}