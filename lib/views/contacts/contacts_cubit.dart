import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/dio_get.dart';
import 'package:storezone/views/contacts/contacts_model.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsInit());

  List<Contact> contacts = [];

  static ContactsCubit of(context) => BlocProvider.of(context);

  Future<void> getContact() async {
    emit(ContactsLoading());
    try {
      final response = await dioGet("contacts");
      final data = response.data as Map;
      contacts.clear();
      ContactsModel contactsModel = ContactsModel.fromJson(data);
      contacts.addAll(contactsModel.data.data);
      emit(ContactsInit());
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
