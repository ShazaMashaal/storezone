/// status : true
/// message : null
/// data : {"cart_items":[{"id":7637,"quantity":1,"product":{"id":53,"price":5599,"old_price":10230,"discount":45,"image":"https://student.valuxapps.com/storage/uploads/products/1615440689wYMHV.item_XXL_36330138_142814934.jpeg","name":"مكبر صوت بلوتوث مقاوم للمياه ومحمول اكستريم 2 من جيه بي ال JBLXTREME2BLUAM - ازرق","description":"مدة تشغيل الموسيقى: 15 ساعة\r\nالطاقة المخرجة (وات): 2 × 20\r\nالأبعاد: 13.6 × 28.8 × 13.2 سنتيمتر\r\nالوزن: 2.39 كيلوجرام\r\nاصدار البلوتوث: 4.2\r\nسعة البطارية: 10000 مللي امبير في الساعة\r\nمدة الشحن: 3 ساعات ونصف\r\nمدخل كابل صوت 3.5 ملم: متاح\r\nخاصية إيقاف التشغيل التلقائي: متاحة\r\nتقنية البلوتوث: متاحة\r\nيدعم تطبيق جيه بي ال كونيكت+: نعم \r\nشاحن باور بانك: متاح\r\nمكبر صوت خارجي: متاح\r\nخاصية المساعد الصوتي: متاحة\r\nمقاوم للمياه: نعم","images":["https://student.valuxapps.com/storage/uploads/products/1615440689Oojt6.item_XXL_36330138_142814947.jpeg","https://student.valuxapps.com/storage/uploads/products/16154406895ynKU.item_XXL_36330138_142814944.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689MjvIY.item_XXL_36330138_142814940.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689QITsu.item_XXL_36330138_142814934.jpeg"],"in_favorites":true,"in_cart":true}}],"sub_total":5599,"total":5599}

class CartModel {
  CartModel({
      this.status, 
      this.message, 
      this.data,});

  CartModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool status;
  dynamic message;
  Data data;


}

/// cart_items : [{"id":7637,"quantity":1,"product":{"id":53,"price":5599,"old_price":10230,"discount":45,"image":"https://student.valuxapps.com/storage/uploads/products/1615440689wYMHV.item_XXL_36330138_142814934.jpeg","name":"مكبر صوت بلوتوث مقاوم للمياه ومحمول اكستريم 2 من جيه بي ال JBLXTREME2BLUAM - ازرق","description":"مدة تشغيل الموسيقى: 15 ساعة\r\nالطاقة المخرجة (وات): 2 × 20\r\nالأبعاد: 13.6 × 28.8 × 13.2 سنتيمتر\r\nالوزن: 2.39 كيلوجرام\r\nاصدار البلوتوث: 4.2\r\nسعة البطارية: 10000 مللي امبير في الساعة\r\nمدة الشحن: 3 ساعات ونصف\r\nمدخل كابل صوت 3.5 ملم: متاح\r\nخاصية إيقاف التشغيل التلقائي: متاحة\r\nتقنية البلوتوث: متاحة\r\nيدعم تطبيق جيه بي ال كونيكت+: نعم \r\nشاحن باور بانك: متاح\r\nمكبر صوت خارجي: متاح\r\nخاصية المساعد الصوتي: متاحة\r\nمقاوم للمياه: نعم","images":["https://student.valuxapps.com/storage/uploads/products/1615440689Oojt6.item_XXL_36330138_142814947.jpeg","https://student.valuxapps.com/storage/uploads/products/16154406895ynKU.item_XXL_36330138_142814944.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689MjvIY.item_XXL_36330138_142814940.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689QITsu.item_XXL_36330138_142814934.jpeg"],"in_favorites":true,"in_cart":true}}]
/// sub_total : 5599
/// total : 5599

class Data {
  Data({
      this.cartItems, 
      this.subTotal, 
      this.total,});

  Data.fromJson(dynamic json) {
    if (json['cart_items'] != null) {
      cartItems = [];
      json['cart_items'].forEach((v) {
        cartItems.add(CartItems.fromJson(v));
      });
    }
    subTotal = json['sub_total'];
    total = json['total'];
  }
  List<CartItems> cartItems;
  int subTotal;
  int total;


}

/// id : 7637
/// quantity : 1
/// product : {"id":53,"price":5599,"old_price":10230,"discount":45,"image":"https://student.valuxapps.com/storage/uploads/products/1615440689wYMHV.item_XXL_36330138_142814934.jpeg","name":"مكبر صوت بلوتوث مقاوم للمياه ومحمول اكستريم 2 من جيه بي ال JBLXTREME2BLUAM - ازرق","description":"مدة تشغيل الموسيقى: 15 ساعة\r\nالطاقة المخرجة (وات): 2 × 20\r\nالأبعاد: 13.6 × 28.8 × 13.2 سنتيمتر\r\nالوزن: 2.39 كيلوجرام\r\nاصدار البلوتوث: 4.2\r\nسعة البطارية: 10000 مللي امبير في الساعة\r\nمدة الشحن: 3 ساعات ونصف\r\nمدخل كابل صوت 3.5 ملم: متاح\r\nخاصية إيقاف التشغيل التلقائي: متاحة\r\nتقنية البلوتوث: متاحة\r\nيدعم تطبيق جيه بي ال كونيكت+: نعم \r\nشاحن باور بانك: متاح\r\nمكبر صوت خارجي: متاح\r\nخاصية المساعد الصوتي: متاحة\r\nمقاوم للمياه: نعم","images":["https://student.valuxapps.com/storage/uploads/products/1615440689Oojt6.item_XXL_36330138_142814947.jpeg","https://student.valuxapps.com/storage/uploads/products/16154406895ynKU.item_XXL_36330138_142814944.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689MjvIY.item_XXL_36330138_142814940.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689QITsu.item_XXL_36330138_142814934.jpeg"],"in_favorites":true,"in_cart":true}

class CartItems {
  CartItems({
      this.id, 
      this.quantity, 
      this.product,});

  CartItems.fromJson(dynamic json) {
    id = json['id'];
    quantity = json['quantity'];
    product = json['product'] != null ? Product.fromJson(json['product']) : null;
  }
  int id;
  int quantity;
  Product product;


}

/// id : 53
/// price : 5599
/// old_price : 10230
/// discount : 45
/// image : "https://student.valuxapps.com/storage/uploads/products/1615440689wYMHV.item_XXL_36330138_142814934.jpeg"
/// name : "مكبر صوت بلوتوث مقاوم للمياه ومحمول اكستريم 2 من جيه بي ال JBLXTREME2BLUAM - ازرق"
/// description : "مدة تشغيل الموسيقى: 15 ساعة\r\nالطاقة المخرجة (وات): 2 × 20\r\nالأبعاد: 13.6 × 28.8 × 13.2 سنتيمتر\r\nالوزن: 2.39 كيلوجرام\r\nاصدار البلوتوث: 4.2\r\nسعة البطارية: 10000 مللي امبير في الساعة\r\nمدة الشحن: 3 ساعات ونصف\r\nمدخل كابل صوت 3.5 ملم: متاح\r\nخاصية إيقاف التشغيل التلقائي: متاحة\r\nتقنية البلوتوث: متاحة\r\nيدعم تطبيق جيه بي ال كونيكت+: نعم \r\nشاحن باور بانك: متاح\r\nمكبر صوت خارجي: متاح\r\nخاصية المساعد الصوتي: متاحة\r\nمقاوم للمياه: نعم"
/// images : ["https://student.valuxapps.com/storage/uploads/products/1615440689Oojt6.item_XXL_36330138_142814947.jpeg","https://student.valuxapps.com/storage/uploads/products/16154406895ynKU.item_XXL_36330138_142814944.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689MjvIY.item_XXL_36330138_142814940.jpeg","https://student.valuxapps.com/storage/uploads/products/1615440689QITsu.item_XXL_36330138_142814934.jpeg"]
/// in_favorites : true
/// in_cart : true

class Product {
  Product({
      this.id, 
      this.price, 
      this.oldPrice, 
      this.discount, 
      this.image, 
      this.name, 
      this.description, 
      this.images, 
      this.inFavorites, 
      this.inCart,});

  Product.fromJson(dynamic json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }
  int id;
  int price;
  int oldPrice;
  int discount;
  String image;
  String name;
  String description;
  List<String> images;
  bool inFavorites;
  bool inCart;



}