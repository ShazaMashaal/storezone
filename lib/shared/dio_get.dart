import 'package:dio/dio.dart';
import 'package:storezone/consts/strings.dart';

dioGet(String endPoint){
  return Dio().get(baseUrl + endPoint,
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status < 500;
          }));
}