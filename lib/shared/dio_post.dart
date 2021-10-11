import 'package:dio/dio.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';

dioPost(data,String endPoint){
return Dio().post(baseUrl+endPoint,data: data,options: Options(
    followRedirects: false,
    validateStatus: (status) {
      return status < 500;
    },
    contentType: 'application/json',
    headers: {
      'Authorization':AppStorage.getToken}
));
}