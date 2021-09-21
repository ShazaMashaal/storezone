import 'package:flutter/material.dart';
import 'package:storezone/views/forgot_password/components/custom_appbar.dart';

class ChangePasswordView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,"Change Password"),
    );
  }
}
