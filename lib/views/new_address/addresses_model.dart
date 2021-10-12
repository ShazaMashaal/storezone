/// status : true
/// message : null
/// data : {"current_page":1,"data":[{"id":615,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":0,"longitude":0},{"id":614,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":0,"longitude":0}],"first_page_url":"https://student.valuxapps.com/api/addresses?page=1","from":1,"last_page":1,"last_page_url":"https://student.valuxapps.com/api/addresses?page=1","next_page_url":null,"path":"https://student.valuxapps.com/api/addresses","per_page":35,"prev_page_url":null,"to":2,"total":2}

class AddressesModel {
  AddressesModel({
    this.status,
    this.message,
    this.data,
  });

  AddressesModel.fromJson(dynamic json) {
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
/// data : [{"id":615,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":0,"longitude":0},{"id":614,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":0,"longitude":0}]
/// first_page_url : "https://student.valuxapps.com/api/addresses?page=1"
/// from : 1
/// last_page : 1
/// last_page_url : "https://student.valuxapps.com/api/addresses?page=1"
/// next_page_url : null
/// path : "https://student.valuxapps.com/api/addresses"
/// per_page : 35
/// prev_page_url : null
/// to : 2
/// total : 2

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
    this.total,
  });

  Data.fromJson(dynamic json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data.add(AddressData.fromJson(v));
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
  List<AddressData> data;
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

/// id : 615
/// name : "Work"
/// city : "Cairo"
/// region : "Nasr City"
/// details : "7 Wahran str"
/// notes : "Work address"
/// latitude : 0
/// longitude : 0

class AddressData {
  AddressData({
    this.id,
    this.name,
    this.city,
    this.region,
    this.details,
    this.notes,
    this.latitude,
    this.longitude,
  });

  AddressData.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    region = json['region'];
    details = json['details'];
    notes = json['notes'];
    latitude = json['latitude'] + 0.0;
    longitude = json['longitude'] + 0.0;
  }

  int id;
  String name;
  String city;
  String region;
  String details;
  String notes;
  double latitude;
  double longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['city'] = city;
    map['region'] = region;
    map['details'] = details;
    map['notes'] = notes;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }
}