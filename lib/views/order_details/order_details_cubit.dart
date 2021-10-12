import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/shared/dio_get.dart';
import 'package:storezone/views/order_details/order_details_model.dart';

part 'order_details_state.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  OrderDetailsCubit() : super(OrderDetailsInit());

  static OrderDetailsCubit of(context) => BlocProvider.of(context);

  OrderDetailsModel orderDetails;

  Future<void> getOrderDetails(int orderId) async {
    emit(OrderDetailsLoading());
    try {
      final response = await authorisedDioGet("orders/" + orderId.toString());

      final data = response.data as Map;
      orderDetails = OrderDetailsModel.fromJson(data);

      emit(OrderDetailsInit());
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
