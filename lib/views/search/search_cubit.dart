import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/search/search_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInit());

  static SearchCubit of(context) => BlocProvider.of(context);

  List<SearchResult> result = [];

  Future<void> getSearchResult(String text) async {
    emit(SearchLoading());
    try {
      final response = await Dio().post(baseUrl + 'products/search',
          data: {"text": text},
          options: Options(headers: {'Authorization': AppStorage.getToken}));
      final data = response.data as Map;
      SearchModel searchModel = SearchModel.fromJson(data);
      result.addAll(searchModel.data.data);
    } catch (e, s) {
      print(e);
      print(s);
    }
    emit(SearchInit());
  }
}
