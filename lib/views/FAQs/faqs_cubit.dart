import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/dio_get.dart';

import 'faqs_model.dart';

part 'faqs_state.dart';

class FAQsCubit extends Cubit<FAQsState> {
  FAQsCubit() : super(FAQsInitial());
  static FAQsCubit of(context) => BlocProvider.of(context);

  List<ItemData> items = [];

  Future<void> getQuestionsAndAnswers()async{
    emit(FAQsLoading());
    final response = await dioGet('faqs');
    final data = response.data as Map;
    FAQsModel faqsModel = FAQsModel.fromJson(data);
    items.clear();
    print(faqsModel.data.data);
    items.addAll(faqsModel.data.data);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(FAQsInitial());
  }
}
