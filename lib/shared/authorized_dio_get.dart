import 'package:dio/dio.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';

 authorisedDioGet(String endPoint){
  return Dio().get(baseUrl+endPoint,options: Options(
      headers: {'Authorization' : AppStorage.getToken},
      followRedirects: false,
      validateStatus: (status) {
       return status < 500;
      }
  ));
}