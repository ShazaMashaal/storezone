import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/bottom_navigation_bar/components/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[appCyanColor, Color(0xFFFFC981)])),
          accountName: Text(GetStorage().read('name')),
          accountEmail: Text(GetStorage().read('email')),
          currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(110),
              child: Image.network(GetStorage().read('image'))),
        ),
        DrawerItem(Icons.question_answer_outlined, FAQsScreen, 'FAQs'),
        DrawerItem(Icons.list_alt, ordersScreen, 'Orders'),
        DrawerItem(Icons.rate_review_outlined, complaintsScreen, 'Complaints'),
        DrawerItem(Icons.logout, splashScreen, 'Log out'),
      ],
    ));
  }
}
