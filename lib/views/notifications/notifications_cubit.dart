import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/views/notifications/notifications_model.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsInit());

  static NotificationsCubit of(context) => BlocProvider.of(context);

  List<NotificationData> notification=[];


  Future<void> getNotification() async {
    emit(NotificationsLoading());
    try {
      final response = await authorisedDioGet('notifications');
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
