import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/components/register_button.dart';

class SignCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3),
      width: MediaQuery.of(context).size.width / 1.8,
      child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                Container(padding: EdgeInsets.symmetric(vertical: 10), child: Text("Sign in for the best experience")),
                Spacer(),
                registerButton(context,Color(0xFFFD9A25),"Sign In",25,textColor: Colors.white,function: ()=>Navigator.pushNamed(context, loginScreen)),
                Container(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),child: RichText(text: TextSpan(text: "Create an account",style: TextStyle(color: Colors.blue),recognizer:TapGestureRecognizer()..onTap=()=> Navigator.pushNamed(context, registerScreen) ),))
              ],
            ),
          )),
    );
  }
}
