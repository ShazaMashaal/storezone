import 'package:flutter/material.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';

import '../contacts_model.dart';

class ContactItem extends StatelessWidget {
final Contact contact;

  const ContactItem(this.contact);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: FadeImageHandleError(contact.image),
    title:Text(contact.value),
    );
  }
}
