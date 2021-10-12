/// status : true
/// message : null
/// data : {"current_page":1,"data":[{"id":1,"type":3,"value":"https://facebook.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Facebook.png"},{"id":2,"type":3,"value":"https://instagram.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Instagram.png"},{"id":3,"type":3,"value":"https://twitter.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Twitter.png"},{"id":4,"type":2,"value":"info@valuxapps.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Email.png"},{"id":5,"type":1,"value":"+201000478466","image":"https://student.valuxapps.com/storage/uploads/contacts/Phone.png"},{"id":6,"type":3,"value":"http://wa.me/201000478466","image":"https://student.valuxapps.com/storage/uploads/contacts/Whatsapp.png"},{"id":7,"type":3,"value":"https://snapchat.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Snapchat.png"},{"id":8,"type":3,"value":"https://youtube.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Youtube.png"},{"id":9,"type":3,"value":"https://valuxapps.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Website.png"}],"first_page_url":"https://student.valuxapps.com/api/contacts?page=1","from":1,"last_page":1,"last_page_url":"https://student.valuxapps.com/api/contacts?page=1","next_page_url":null,"path":"https://student.valuxapps.com/api/contacts","per_page":35,"prev_page_url":null,"to":9,"total":9}

class ContactsModel {
  ContactsModel({
      this.status, 
      this.message, 
      this.data,});

  ContactsModel.fromJson(dynamic json) {
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
/// data : [{"id":1,"type":3,"value":"https://facebook.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Facebook.png"},{"id":2,"type":3,"value":"https://instagram.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Instagram.png"},{"id":3,"type":3,"value":"https://twitter.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Twitter.png"},{"id":4,"type":2,"value":"info@valuxapps.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Email.png"},{"id":5,"type":1,"value":"+201000478466","image":"https://student.valuxapps.com/storage/uploads/contacts/Phone.png"},{"id":6,"type":3,"value":"http://wa.me/201000478466","image":"https://student.valuxapps.com/storage/uploads/contacts/Whatsapp.png"},{"id":7,"type":3,"value":"https://snapchat.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Snapchat.png"},{"id":8,"type":3,"value":"https://youtube.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Youtube.png"},{"id":9,"type":3,"value":"https://valuxapps.com","image":"https://student.valuxapps.com/storage/uploads/contacts/Website.png"}]
/// first_page_url : "https://student.valuxapps.com/api/contacts?page=1"
/// from : 1
/// last_page : 1
/// last_page_url : "https://student.valuxapps.com/api/contacts?page=1"
/// next_page_url : null
/// path : "https://student.valuxapps.com/api/contacts"
/// per_page : 35
/// prev_page_url : null
/// to : 9
/// total : 9

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
        data.add(Contact.fromJson(v));
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
  List<Contact> data;
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

/// id : 1
/// type : 3
/// value : "https://facebook.com"
/// image : "https://student.valuxapps.com/storage/uploads/contacts/Facebook.png"

class Contact {
  Contact({
      this.id, 
      this.type, 
      this.value, 
      this.image,});

  Contact.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    value = json['value'];
    image = json['image'];
  }
  int id;
  int type;
  String value;
  String image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['value'] = value;
    map['image'] = image;
    return map;
  }

}