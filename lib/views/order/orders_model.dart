/// status : true
/// message : null
/// data : {"current_page":1,"data":[{"id":715,"total":13108.860000000000582076609134674072265625,"date":"11 / 10 / 2021","status":"جديد"},{"id":714,"total":50569.2600000000020372681319713592529296875,"date":"11 / 10 / 2021","status":"جديد"},{"id":713,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":712,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":711,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":710,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":709,"total":646.3799999999999954525264911353588104248046875,"date":"11 / 10 / 2021","status":"جديد"}],"first_page_url":"https://student.valuxapps.com/api/orders?page=1","from":1,"last_page":1,"last_page_url":"https://student.valuxapps.com/api/orders?page=1","next_page_url":null,"path":"https://student.valuxapps.com/api/orders","per_page":35,"prev_page_url":null,"to":7,"total":7}

class OrdersModel {
  OrdersModel({
      this.status, 
      this.message, 
      this.data,});

  OrdersModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool status;
  dynamic message;
  Data data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data.toJson();
    }
    return map;
  }

}

/// current_page : 1
/// data : [{"id":715,"total":13108.860000000000582076609134674072265625,"date":"11 / 10 / 2021","status":"جديد"},{"id":714,"total":50569.2600000000020372681319713592529296875,"date":"11 / 10 / 2021","status":"جديد"},{"id":713,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":712,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":711,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":710,"total":0,"date":"11 / 10 / 2021","status":"جديد"},{"id":709,"total":646.3799999999999954525264911353588104248046875,"date":"11 / 10 / 2021","status":"جديد"}]
/// first_page_url : "https://student.valuxapps.com/api/orders?page=1"
/// from : 1
/// last_page : 1
/// last_page_url : "https://student.valuxapps.com/api/orders?page=1"
/// next_page_url : null
/// path : "https://student.valuxapps.com/api/orders"
/// per_page : 35
/// prev_page_url : null
/// to : 7
/// total : 7

class Data {
  Data({
      this.currentPage, 
      this.data, 
      this.firstPageUrl, 
      this.from, 
      this.lastPage, 
      this.lastPageUrl, 
      this.nextPageUrl, 
      this.path, 
      this.perPage, 
      this.prevPageUrl, 
      this.to, 
      this.total,});

  Data.fromJson(dynamic json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data.add(Order.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }
  int currentPage;
  List<Order> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    if (data != null) {
      map['data'] = data.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = firstPageUrl;
    map['from'] = from;
    map['last_page'] = lastPage;
    map['last_page_url'] = lastPageUrl;
    map['next_page_url'] = nextPageUrl;
    map['path'] = path;
    map['per_page'] = perPage;
    map['prev_page_url'] = prevPageUrl;
    map['to'] = to;
    map['total'] = total;
    return map;
  }

}

/// id : 715
/// total : 13108.860000000000582076609134674072265625
/// date : "11 / 10 / 2021"
/// status : "جديد"

class Order {
  Order({
      this.id, 
      this.total, 
      this.date, 
      this.status,});

  Order.fromJson(dynamic json) {
    id = json['id'];
    total = json['total']+0.0;
    date = json['date'];
    status = json['status'];
  }
  int id;
  double total;
  String date;
  String status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['total'] = total;
    map['date'] = date;
    map['status'] = status;
    return map;
  }

}