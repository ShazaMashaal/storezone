import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/favorite/components/favorite_item_name.dart';
import 'package:storezone/views/notifications/notifications_cubit.dart';

class NotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => NotificationsCubit()..getNotification(),
      child: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) => state is NotificationsLoading
            ? Center(child: CircularProgressIndicator())
            : NotificationsCubit.of(context).notification.length == 0
                ? Center(child: Text("No Notifications"))
                : ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount:
                        NotificationsCubit.of(context).notification.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.94,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            color: Colors.white,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: FavoriteItemName(NotificationsCubit.of(context)
                                  .notification[index]
                                  .message),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
      ),
    ));
  }
}
