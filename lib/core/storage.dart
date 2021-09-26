import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/models/user.dart';

class AppStorage {

  static GetStorage _box =  GetStorage();
  static cashUserInfo(UserModel user,{context}) {
    _box.write('name', user.data.name);
    _box.write('image', user.data.image);
    _box.write('email', user.data.email);
    _box.write('points', user.data.points);
    _box.write('phone', user.data.phone);

    _box.write('credit', user.data.credit);
    _box.write('id', user.data.id);
    _box.write('token', user.data.token);
    Navigator.pushNamed(context, homeScreen);
  }
  static String get getToken=> _box.read("token");

  static bool get isLogged =>_box.hasData('token');

  static String get  getImage=> _box.read("image");
  static String get  getName=> _box.read("name");
  static String get  getPhone=> _box.read("phone");
  static String get  getEmail=> _box.read("email");
  static  Future<void>  setToken(String token)=> _box.write('token',token);



  static Future<void> init()async => await GetStorage.init();
  //
  // static Future<void> cacheUserInfo({
  //   @required int userId,
  //   @required UserModel userModel,
  // })async{
  //   await _cacheUserId(userId);
  //   await _cacheUserModel(userModel);
  // }

  static Future<void> _cacheUserModel(UserModel userModel)async => await _box.write('userModel', userModel.toJson());

  static Future<void> _cacheUserId(int id)async=> await _box.write('userId', id);


  static int get getUserId =>
      _box.read('userId');
  // 2;



  static UserModel get getUserInfo {
    UserModel userModel;
    if(_box.hasData('userModel'))
      userModel = UserModel.fromJson(_box.read('userModel'));
    return userModel;
  }


  static Future<void> signOut(context)async{
    await _box.erase();
    Navigator.pushNamed(context,splashScreen);
  }

}