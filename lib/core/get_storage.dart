import 'package:get_storage/get_storage.dart';

class Storage{
  static GetStorage box=GetStorage();

  Future<void> storageInit ()async=>  await GetStorage.init();

  Future<void> set ()async=>  await GetStorage.init();



}