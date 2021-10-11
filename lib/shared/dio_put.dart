import 'package:dio/dio.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';

dioPut(data,String endPoint){
  return Dio().put(baseUrl + endPoint,
      data: data,
      options: Options(
          headers: {'Authorization': AppStorage.getToken},
          followRedirects: false,
          validateStatus: (status) {
            return status < 500;
          }));
}