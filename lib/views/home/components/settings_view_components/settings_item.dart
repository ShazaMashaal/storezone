import 'package:flutter/material.dart';
import 'package:storezone/views/home/components/category_view_components/grey_back_arrow.dart';

class SettingsItem extends StatelessWidget {
  final String title;

  final IconData icon;

  const SettingsItem({Key key, this.title, this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(0,20,30,20),
        leading: CircleAvatar(
          backgroundColor: Color(0xFFFFF5E8),
          radius: 50,
          child:Icon(icon,color: Colors.grey,size: 40,) ,
        ),
        title: Text(title,style: (TextStyle(fontSize: 18)),),
        trailing: GreyForwardArrow(),
      ),
    );
  }
}