class CategoriesModel {
  Data data;

  CategoriesModel({this.data});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }


}

class Data {
  int currentPage;
  List<CategoriesData> data;

  Data({this.currentPage, this.data});

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<CategoriesData>();
      json['data'].forEach((v) {
        data.add(new CategoriesData.fromJson(v));
      });
    }
  }

 
}

class CategoriesData {
  int id;
  String name;
  String image;

  CategoriesData({this.id, this.name, this.image});

  CategoriesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

}
