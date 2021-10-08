import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/notifications/notifications_model.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsInit());

  static NotificationsCubit of(context) => BlocProvider.of(context);

  List<NotificationData> notification=[];


  Future<void> getNotification() async {
    emit(NotificationsLoading());
    try {
      final response = await Dio().get(baseUrl + 'notifications',
          options: Options(headers: {'Authorization': AppStorage.getToken}));
      final data = response.data as Map;
      NotificationsModel notificationsModel = NotificationsModel.fromJson(data);
      notification.addAll(notificationsModel.data.data);
    } catch (e, s) {
      print(e);
      print(s);
    }
    emit(NotificationsInit());
  }

}
