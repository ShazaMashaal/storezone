import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/widgets/custom_button.dart';

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
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text("Sign in for the best experience"),

            Expanded(

                child: Column(
              children: [
                CustomButton(color:Color(0xFFFD9A25),text: "Sign In",height: 30,
                    textColor: Colors.white,
                    function: () => Navigator.pushNamed(context, loginScreen)),
                Container(
                    padding: EdgeInsets.only(top: 3),
                    child: RichText(
                      text: TextSpan(
                          text: "Create an account",
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.pushNamed(context, registerScreen)),
                    ))
              ],
            ))
          ],
        ),
      )),
    );
  }
}
