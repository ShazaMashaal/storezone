import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/register/components/register_button.dart';

class SettingsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 30),
      child: ListView(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: Text("Shaza Mashaal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          SizedBox(height: 40,),

          Container(
            child: TextField(
              controller: TextEditingController()..text = 'Shazamashaal308@gmail.com',

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.email,color: Color(0xFFFD9A25),),
                border: InputBorder.none,
              ),
            ),

            decoration:  BoxDecoration(
              boxShadow:  [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                ),],
            ),
          ),

          SizedBox(height:40),

      Container(
        child: TextField(
          controller: TextEditingController()..text = '01093976633',

          decoration: InputDecoration(
          filled: true,
            fillColor: Colors.grey[200],
            prefixIcon: Icon(Icons.phone,color: Color(0xFFFD9A25),),
            border: InputBorder.none,
          ),
        ),

        decoration:  BoxDecoration(
          boxShadow:  [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),],
        ),
      ),
          SizedBox(height: 50,),
      TextButton.icon(onPressed: null, icon: Icon(Icons.edit,color: Color(0xFFFD9A25),),label:Text("Edit Profile",style: TextStyle(fontSize: 18,color:Color(0xFFFD9A25), ),) ),
          SizedBox(height: 70,),
          registerButton(context, Color(0xFFFD9A25), "LogOut", 16,textColor: Colors.white)





      ],
      ),
    );
  }
}
