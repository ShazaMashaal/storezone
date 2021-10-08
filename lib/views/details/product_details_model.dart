/// status : true
/// message : null
/// data : {"id":58,"price":1083,"old_price":1083,"discount":0,"image":"https://student.valuxapps.com/storage/uploads/products/161545152160GOl.item_XXL_39275650_152762070.jpeg","name":"أداة تمرين حديد كيتل بيل من ستارك، 24 كجم","description":"العلامة التجارية: ستارك\r\nاللون: اسود\r\nالوزن: 24 كغ\r\nالفئة المستهدفة: للجنسين","in_favorites":true,"in_cart":false,"images":["https://student.valuxapps.com/storage/uploads/products/16154515218VdQx.item_XXL_39275650_152762070.jpeg","https://student.valuxapps.com/storage/uploads/products/1615451521kM8Ij.item_XXL_39275650_152762102.jpeg"]}

class ProductDetailsModel {
  ProductDetailsModel({
      this.status, 
      this.message, 
      this.data,});

  ProductDetailsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool status;
  dynamic message;
  Data data;


}

/// id : 58
/// price : 1083
/// old_price : 1083
/// discount : 0
/// image : "https://student.valuxapps.com/storage/uploads/products/161545152160GOl.item_XXL_39275650_152762070.jpeg"
/// name : "أداة تمرين حديد كيتل بيل من ستارك، 24 كجم"
/// description : "العلامة التجارية: ستارك\r\nاللون: اسود\r\nالوزن: 24 كغ\r\nالفئة المستهدفة: للجنسين"
/// in_favorites : true
/// in_cart : false
/// images : ["https://student.valuxapps.com/storage/uploads/products/16154515218VdQx.item_XXL_39275650_152762070.jpeg","https://student.valuxapps.com/storage/uploads/products/1615451521kM8Ij.item_XXL_39275650_152762102.jpeg"]

class Data {
  Data({
      this.id, 
      this.price, 
      this.oldPrice, 
      this.discount, 
      this.image, 
      this.name, 
      this.description, 
      this.inFavorites, 
      this.inCart, 
      this.images,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  int id;
  int price;
  int oldPrice;
  int discount;
  String image;
  String name;
  String description;
  bool inFavorites;
  bool inCart;
  List<String> images;



}