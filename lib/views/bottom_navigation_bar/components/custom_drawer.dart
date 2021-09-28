import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezone/consts/strings.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFFFD9A25), Color(0xFFFFC981)])),
          accountName: Text(GetStorage().read('name')),
          accountEmail: Text(GetStorage().read('email')),
          currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(110),
              child: Image.network(GetStorage().read('image'))),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Log out'),
          onTap: () {
            GetStorage().erase();
            Navigator.pushNamed(context, splashScreen);
          },
        ),
        ListTile(
          leading: Icon(Icons.question_answer_outlined),
          title: Text('FAQs'),
          onTap: () {
            Navigator.pushNamed(context, FAQsScreen);
          },
        )
      ],
    ));
  }
}
