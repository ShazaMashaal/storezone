import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';
import 'package:storezone/views/contacts/contacts_cubit.dart';

import 'components/contact_item.dart';

class ContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ContactsCubit()..getContact(),
        child: Scaffold(
            appBar: AppBar(
              flexibleSpace: AppBarColor(),
            ),
            body: BlocBuilder<ContactsCubit, ContactsState>(
                builder: (context, state) => state is ContactsLoading
                    ? Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                  physics: ScrollPhysics(),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: ContactsCubit.of(context).contacts.length,
                          itemBuilder: (context, index) => ContactItem(ContactsCubit.of(context).contacts[index]),
                        ),
                      ))));
  }
}
