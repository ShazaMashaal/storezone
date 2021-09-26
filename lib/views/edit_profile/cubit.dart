import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/user.dart';
import 'package:storezone/views/edit_profile/states.dart';


class EditProfileCubit extends Cubit<EditProfileStates> {
  UserModel user;

  EditProfileCubit() : super(EditProfileInit());

  static EditProfileCubit of(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();

  File file;
  TextEditingController nameController =
      TextEditingController(text: AppStorage.getName);
  TextEditingController phoneController =
      TextEditingController(text: AppStorage.getPhone);

  TextEditingController emailController =
      TextEditingController(text: AppStorage.getEmail);

//TODO: preventing from invalid inputs

  Future<void> update() async {
    emit(EditProfileLoading());

    /// HTTP & DIO ?? Body is Raw
    final formData = {
      "name": nameController.text,
      "phone": phoneController.text,
      "email": emailController.text,
      if (file != null) "image": base64Encode(file.readAsBytesSync())
    };

    try {
      final response = await Dio().put(baseUrl + 'update-profile',
          data: formData,
          options: Options(
              headers: {'Authorization': AppStorage.getToken},
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      user=UserModel.fromJson(response.data);

      await AppStorage.cashUserInfo(user);
    } catch (e) {
      print(e);
    }
    emit(EditProfileInit());
  }

  void pickPhoto() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    file = File(pickedFile.path);
    emit(EditProfileInit());
  }

  fullScreenImage(context) {
    Navigator.pushNamed(context, fullImageScreen);
  }

//TODO: دي عشان ايه
  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}

// Future<void> getProfileData(BuildContext context) async {
//   emit(EditProfileLoading());
//   try {
//
//     final response = await Dio().get(baseUrl + "profile",
//         options: Options(
//           contentType: 'application/json',
//           method: 'Get',
//           validateStatus: (status) => status < 500,
//           headers:  {'Authorization': AppStorage.getToken},
//         ));
//     final data = response.data as Map;
//     user=UserModel.fromJson(data);
//   } catch (e, s) {
//     print(s);
//     print(e);
//   }
//   emit(EditProfileInit());
// }
