class FavoritesModel {
  bool status;
  String message;
  Data data;

  FavoritesModel({this.status, this.message, this.data});

  FavoritesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }


}

class Data {
  int currentPage;
  List<ProductData> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  Null nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  Data(
      {this.currentPage,
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
        this.total});

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<ProductData>();
      json['data'].forEach((v) {
        data.add(new ProductData.fromJson(v));
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


}

class ProductData {
  int id;
  Product product;

  ProductData({this.id, this.product});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product =
    json['product'] != null ? new Product.fromJson(json['product']) : null;
  }


}

class Product {
  int id;
  double price;
  double oldPrice;
  int discount;
  String image;
  String name;
  String description;

  Product(
      {this.id,
        this.price,
        this.oldPrice,
        this.discount,
        this.image,
        this.name,
        this.description});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price']+0.0;
    oldPrice = json['old_price']+0.0;
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
  }


}
