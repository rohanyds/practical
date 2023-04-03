class Representative {
  int? draw;
  int? start;
  int? recordsTotal;
  int? recordsFiltered;
  List<Data>? data;

  Representative(
      {this.draw,
        this.start,
        this.recordsTotal,
        this.recordsFiltered,
        this.data});

  Representative.fromJson(Map<String, dynamic> json) {
    draw = json['draw'];
    start = json['start'];
    recordsTotal = json['recordsTotal'];
    recordsFiltered = json['recordsFiltered'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['draw'] = this.draw;
    data['start'] = this.start;
    data['recordsTotal'] = this.recordsTotal;
    data['recordsFiltered'] = this.recordsFiltered;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? customerId;
  String? name;
  bool? status;

  Data({this.id, this.customerId, this.name, this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customerId'];
    name = json['name'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customerId'] = this.customerId;
    data['name'] = this.name;
    data['status'] = this.status;
    return data;
  }
}