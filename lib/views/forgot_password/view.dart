import 'package:flutter/material.dart';
import 'package:storezone/views/forgot_password/widgets/custom_appbar.dart';
import 'package:storezone/views/forgot_password/widgets/pin_code_screen.dart';
import 'package:storezone/views/forgot_password/widgets/show_dialog.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:storezone/views/register/components/text_field.dart';

class ForgotPasswordView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context,"Forgot Password"),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),

          children: [
            textField("Email"),
            registerButton(context, Color(0xFFFD9A25), "Reset your password",textColor: Colors.white,function: ()=>showMaterialDialog(context) )
          ],
        ),
      ),
    );
  }

}
