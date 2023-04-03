class Tokenss {
  int? status;
  Data? data;
  Null? error;

  Tokenss({this.status, this.data, this.error});

  Tokenss.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['error'] = this.error;
    return data;
  }
}

class Data {
  String? token;
  CompanyDetails? companyDetails;
  UserDetails? userDetails;

  Data({this.token, this.companyDetails, this.userDetails});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    companyDetails = json['companyDetails'] != null
        ? new CompanyDetails.fromJson(json['companyDetails'])
        : null;
    userDetails = json['userDetails'] != null
        ? new UserDetails.fromJson(json['userDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.companyDetails != null) {
      data['companyDetails'] = this.companyDetails!.toJson();
    }
    if (this.userDetails != null) {
      data['userDetails'] = this.userDetails!.toJson();
    }
    return data;
  }
}

class CompanyDetails {
  String? associationNo;
  String? companyId;
  String? companyRegistrationNo;
  String? cqcRegistrationNo;
  String? createdBy;
  CreatedDate? createdDate;
  String? creditAnalyst;
  String? currencyCode;
  String? customerGroup;
  String? customerIdPay;
  String? email;
  bool? enabled;
  String? gphcregistrationNo;
  String? gstNo;
  String? id;
  String? identity;
  CreatedDate? lastUpdatedDate;
  String? loginId;
  String? mobileNo;
  String? name;
  String? notes;
  String? partyType;
  String? phoneNo;
  String? priceGroup;
  String? registrationNo;
  String? rsm;
  String? salesman;
  String? status;
  String? tradingName;
  String? updatedBy;
  String? vatRegistrationNo;
  String? wdaRegistrationNo;
  String? website;

  CompanyDetails(
      {this.associationNo,
        this.companyId,
        this.companyRegistrationNo,
        this.cqcRegistrationNo,
        this.createdBy,
        this.createdDate,
        this.creditAnalyst,
        this.currencyCode,
        this.customerGroup,
        this.customerIdPay,
        this.email,
        this.enabled,
        this.gphcregistrationNo,
        this.gstNo,
        this.id,
        this.identity,
        this.lastUpdatedDate,
        this.loginId,
        this.mobileNo,
        this.name,
        this.notes,
        this.partyType,
        this.phoneNo,
        this.priceGroup,
        this.registrationNo,
        this.rsm,
        this.salesman,
        this.status,
        this.tradingName,
        this.updatedBy,
        this.vatRegistrationNo,
        this.wdaRegistrationNo,
        this.website});

  CompanyDetails.fromJson(Map<String, dynamic> json) {
    associationNo = json['association_No'];
    companyId = json['companyId'];
    companyRegistrationNo = json['companyRegistrationNo'];
    cqcRegistrationNo = json['cqcRegistrationNo'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'] != null
        ? new CreatedDate.fromJson(json['createdDate'])
        : null;
    creditAnalyst = json['creditAnalyst'];
    currencyCode = json['currencyCode'];
    customerGroup = json['customerGroup'];
    customerIdPay = json['customer_Id_Pay'];
    email = json['email'];
    enabled = json['enabled'];
    gphcregistrationNo = json['gphcregistrationNo'];
    gstNo = json['gstNo'];
    id = json['id'];
    identity = json['identity'];
    lastUpdatedDate = json['lastUpdatedDate'] != null
        ? new CreatedDate.fromJson(json['lastUpdatedDate'])
        : null;
    loginId = json['loginId'];
    mobileNo = json['mobileNo'];
    name = json['name'];
    notes = json['notes'];
    partyType = json['partyType'];
    phoneNo = json['phoneNo'];
    priceGroup = json['price_Group'];
    registrationNo = json['registrationNo'];
    rsm = json['rsm'];
    salesman = json['salesman'];
    status = json['status'];
    tradingName = json['tradingName'];
    updatedBy = json['updatedBy'];
    vatRegistrationNo = json['vatRegistrationNo'];
    wdaRegistrationNo = json['wdaRegistrationNo'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['association_No'] = this.associationNo;
    data['companyId'] = this.companyId;
    data['companyRegistrationNo'] = this.companyRegistrationNo;
    data['cqcRegistrationNo'] = this.cqcRegistrationNo;
    data['createdBy'] = this.createdBy;
    if (this.createdDate != null) {
      data['createdDate'] = this.createdDate!.toJson();
    }
    data['creditAnalyst'] = this.creditAnalyst;
    data['currencyCode'] = this.currencyCode;
    data['customerGroup'] = this.customerGroup;
    data['customer_Id_Pay'] = this.customerIdPay;
    data['email'] = this.email;
    data['enabled'] = this.enabled;
    data['gphcregistrationNo'] = this.gphcregistrationNo;
    data['gstNo'] = this.gstNo;
    data['id'] = this.id;
    data['identity'] = this.identity;
    if (this.lastUpdatedDate != null) {
      data['lastUpdatedDate'] = this.lastUpdatedDate!.toJson();
    }
    data['loginId'] = this.loginId;
    data['mobileNo'] = this.mobileNo;
    data['name'] = this.name;
    data['notes'] = this.notes;
    data['partyType'] = this.partyType;
    data['phoneNo'] = this.phoneNo;
    data['price_Group'] = this.priceGroup;
    data['registrationNo'] = this.registrationNo;
    data['rsm'] = this.rsm;
    data['salesman'] = this.salesman;
    data['status'] = this.status;
    data['tradingName'] = this.tradingName;
    data['updatedBy'] = this.updatedBy;
    data['vatRegistrationNo'] = this.vatRegistrationNo;
    data['wdaRegistrationNo'] = this.wdaRegistrationNo;
    data['website'] = this.website;
    return data;
  }
}

class CreatedDate {
  int? dayOfMonth;
  String? dayOfWeek;
  int? dayOfYear;
  int? hour;
  int? minute;
  String? month;
  int? monthValue;
  int? nano;
  Offset? offset;
  int? second;
  int? year;

  CreatedDate(
      {this.dayOfMonth,
        this.dayOfWeek,
        this.dayOfYear,
        this.hour,
        this.minute,
        this.month,
        this.monthValue,
        this.nano,
        this.offset,
        this.second,
        this.year});

  CreatedDate.fromJson(Map<String, dynamic> json) {
    dayOfMonth = json['dayOfMonth'];
    dayOfWeek = json['dayOfWeek'];
    dayOfYear = json['dayOfYear'];
    hour = json['hour'];
    minute = json['minute'];
    month = json['month'];
    monthValue = json['monthValue'];
    nano = json['nano'];
    offset =
    json['offset'] != null ? new Offset.fromJson(json['offset']) : null;
    second = json['second'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dayOfMonth'] = this.dayOfMonth;
    data['dayOfWeek'] = this.dayOfWeek;
    data['dayOfYear'] = this.dayOfYear;
    data['hour'] = this.hour;
    data['minute'] = this.minute;
    data['month'] = this.month;
    data['monthValue'] = this.monthValue;
    data['nano'] = this.nano;
    if (this.offset != null) {
      data['offset'] = this.offset!.toJson();
    }
    data['second'] = this.second;
    data['year'] = this.year;
    return data;
  }
}

class Offset {
  String? id;
  Rules? rules;
  int? totalSeconds;

  Offset({this.id, this.rules, this.totalSeconds});

  Offset.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rules = json['rules'] != null ? new Rules.fromJson(json['rules']) : null;
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.rules != null) {
      data['rules'] = this.rules!.toJson();
    }
    data['totalSeconds'] = this.totalSeconds;
    return data;
  }
}

class Rules {
  bool? fixedOffset;
  List<Null>? transitionRules;
  List<Null>? transitions;

  Rules({this.fixedOffset, this.transitionRules, this.transitions});

  Rules.fromJson(Map<String, dynamic> json) {
    fixedOffset = json['fixedOffset'];
    if (json['transitionRules'] != null) {
      transitionRules = <Null>[];
      json['transitionRules'].forEach((v) {
        //transitionRules!.add(new Null.fromJson(v));
      });
    }
    if (json['transitions'] != null) {
      transitions = <Null>[];
      json['transitions'].forEach((v) {
      //  transitions!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fixedOffset'] = this.fixedOffset;
    if (this.transitionRules != null) {
      //data['transitionRules'] =
       //   this.transitionRules!.map((v) => v.toJson()).toList();
    }
    if (this.transitions != null) {
     // data['transitions'] = this.transitions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserDetails {
  bool? accountNonExpired;
  bool? accountNonLocked;
  List<Authorities>? authorities;
  bool? credentialsNonExpired;
  String? email;
  bool? enabled;
  int? id;
  String? password;
  String? registrationNo;
  String? role;
  String? status;
  String? userType;
  String? username;

  UserDetails(
      {this.accountNonExpired,
        this.accountNonLocked,
        this.authorities,
        this.credentialsNonExpired,
        this.email,
        this.enabled,
        this.id,
        this.password,
        this.registrationNo,
        this.role,
        this.status,
        this.userType,
        this.username});

  UserDetails.fromJson(Map<String, dynamic> json) {
    accountNonExpired = json['accountNonExpired'];
    accountNonLocked = json['accountNonLocked'];
    if (json['authorities'] != null) {
      authorities = <Authorities>[];
      json['authorities'].forEach((v) {
        authorities!.add(new Authorities.fromJson(v));
      });
    }
    credentialsNonExpired = json['credentialsNonExpired'];
    email = json['email'];
    enabled = json['enabled'];
    id = json['id'];
    password = json['password'];
    registrationNo = json['registrationNo'];
    role = json['role'];
    status = json['status'];
    userType = json['userType'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountNonExpired'] = this.accountNonExpired;
    data['accountNonLocked'] = this.accountNonLocked;
    if (this.authorities != null) {
      data['authorities'] = this.authorities!.map((v) => v.toJson()).toList();
    }
    data['credentialsNonExpired'] = this.credentialsNonExpired;
    data['email'] = this.email;
    data['enabled'] = this.enabled;
    data['id'] = this.id;
    data['password'] = this.password;
    data['registrationNo'] = this.registrationNo;
    data['role'] = this.role;
    data['status'] = this.status;
    data['userType'] = this.userType;
    data['username'] = this.username;
    return data;
  }
}

class Authorities {
  String? authority;

  Authorities({this.authority});

  Authorities.fromJson(Map<String, dynamic> json) {
    authority = json['authority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authority'] = this.authority;
    return data;
  }
}