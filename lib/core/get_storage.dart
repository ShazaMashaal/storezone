import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/models/user.dart';

class AppStorage {

  static GetStorage _box =  GetStorage();

  static Future<void> init()async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    @required int userId,
    @required UserModel userModel,
  })async{
    await _cacheUserId(userId);
    await _cacheUserModel(userModel);
  }

  static Future<void> _cacheUserModel(UserModel userModel)async => await _box.write('userModel', userModel.toJson());

  static Future<void> _cacheUserId(int id)async=> await _box.write('userId', id);


  static int get getUserId =>
      _box.read('userId');
  // 2;

  static bool get isLogged => getUserInfo != null;


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