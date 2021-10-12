import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
final IconData icon;
final String screen;
final String title;

  const DrawerItem( this.icon, this.screen, this.title);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, screen);
      },
    );
  }
}
