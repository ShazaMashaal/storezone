/// status : true
/// message : null
/// data : {"id":718,"cost":32860,"discount":0,"points":0,"vat":4600.4000000000005456968210637569427490234375,"total":37460.4000000000014551915228366851806640625,"points_commission":0,"promo_code":"----","payment_method":"نقدا","date":"11 / 10 / 2021","status":"جديد","address":{"id":686,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":30.061686300000001637044988456182181835174560546875,"longitude":31.326008800000000320551407639868557453155517578125},"products":[{"id":56,"quantity":1,"price":32860,"name":"نيكون FX-format D750 - 24.3 ميجابيكسيل,كاميرا اس ال ار , عدسه 24-120 ملم, اسود","image":"https://student.valuxapps.com/storage/uploads/products/1615450256e0bZk.item_XXL_7582156_7501823.jpeg"}]}

class OrderDetailsModel {
  OrderDetailsModel({
      this.status, 
      this.message, 
      this.data,});

  OrderDetailsModel.fromJson(dynamic json) {
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

/// id : 718
/// cost : 32860
/// discount : 0
/// points : 0
/// vat : 4600.4000000000005456968210637569427490234375
/// total : 37460.4000000000014551915228366851806640625
/// points_commission : 0
/// promo_code : "----"
/// payment_method : "نقدا"
/// date : "11 / 10 / 2021"
/// status : "جديد"
/// address : {"id":686,"name":"Work","city":"Cairo","region":"Nasr City","details":"7 Wahran str","notes":"Work address","latitude":30.061686300000001637044988456182181835174560546875,"longitude":31.326008800000000320551407639868557453155517578125}
/// products : [{"id":56,"quantity":1,"price":32860,"name":"نيكون FX-format D750 - 24.3 ميجابيكسيل,كاميرا اس ال ار , عدسه 24-120 ملم, اسود","image":"https://student.valuxapps.com/storage/uploads/products/1615450256e0bZk.item_XXL_7582156_7501823.jpeg"}]

class Data {
  Data({
      this.id, 
      this.cost, 
      this.discount, 
      this.points, 
      this.vat, 
      this.total, 
      this.pointsCommission, 
      this.promoCode, 
      this.paymentMethod, 
      this.date, 
      this.status, 
      this.address, 
      this.products,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    cost = json['cost'];
    discount = json['discount'];
    points = json['points'];
    vat = json['vat']+0.0;
    total = json['total']+0.0;
    pointsCommission = json['points_commission'];
    promoCode = json['promo_code'];
    paymentMethod = json['payment_method'];
    date = json['date'];
    status = json['status'];
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products.add(Products.fromJson(v));
      });
    }
  }
  int id;
  int cost;
  int discount;
  int points;
  double vat;
  double total;
  int pointsCommission;
  String promoCode;
  String paymentMethod;
  String date;
  String status;
  Address address;
  List<Products> products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['cost'] = cost;
    map['discount'] = discount;
    map['points'] = points;
    map['vat'] = vat;
    map['total'] = total;
    map['points_commission'] = pointsCommission;
    map['promo_code'] = promoCode;
    map['payment_method'] = paymentMethod;
    map['date'] = date;
    map['status'] = status;
    if (address != null) {
      map['address'] = address.toJson();
    }
    if (products != null) {
      map['products'] = products.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 56
/// quantity : 1
/// price : 32860
/// name : "نيكون FX-format D750 - 24.3 ميجابيكسيل,كاميرا اس ال ار , عدسه 24-120 ملم, اسود"
/// image : "https://student.valuxapps.com/storage/uploads/products/1615450256e0bZk.item_XXL_7582156_7501823.jpeg"

class Products {
  Products({
      this.id, 
      this.quantity, 
      this.price, 
      this.name, 
      this.image,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    quantity = json['quantity'];
    price = json['price'];
    name = json['name'];
    image = json['image'];
  }
  int id;
  int quantity;
  int price;
  String name;
  String image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['quantity'] = quantity;
    map['price'] = price;
    map['name'] = name;
    map['image'] = image;
    return map;
  }

}

/// id : 686
/// name : "Work"
/// city : "Cairo"
/// region : "Nasr City"
/// details : "7 Wahran str"
/// notes : "Work address"
/// latitude : 30.061686300000001637044988456182181835174560546875
/// longitude : 31.326008800000000320551407639868557453155517578125

class Address {
  Address({
      this.id, 
      this.name, 
      this.city, 
      this.region, 
      this.details, 
      this.notes, 
      this.latitude, 
      this.longitude,});

  Address.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    region = json['region'];
    details = json['details'];
    notes = json['notes'];
    latitude = json['latitude']+0.0;
    longitude = json['longitude']+0.0;
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