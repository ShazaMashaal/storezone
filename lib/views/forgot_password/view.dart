import 'package:flutter/material.dart';
import 'package:storezone/app_router.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/forgot_password/widgets/pin_code_screen.dart';
import 'package:storezone/views/register/widgets/register_button.dart';
import 'package:storezone/views/register/widgets/text_field.dart';

class ForgotPasswordView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.black,),onTap:()=> Navigator.pop(context),),
        title:Center(child: Text("Forgot Password",style: TextStyle(color: Colors.black),)) ,
        backgroundColor:Colors.white ,
        elevation: 0,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),

          children: [
            textField("Email"),
            registerButton(context, Color(0xFFFD9A25), "Reset your password",textColor: Colors.white,function: pinCodeDialog(context) )

          ],
        ),
      ),
    );
  }
}
