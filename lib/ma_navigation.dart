import 'package:flutter/material.dart';

import 'mesWidgets/DrawerItems.dart';

class MaNavigation extends StatefulWidget {
  const MaNavigation({Key ? maNavigationKey, required this.drawerItem}) : super(key: maNavigationKey);

  final DrawerItem drawerItem;

  @override
  _MaNavigationState createState() => _MaNavigationState();
}

class _MaNavigationState extends State<MaNavigation> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.drawerItem.icon,
              size: 54.0,
            ),
            Text(
              widget.drawerItem.title,
              style: const TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ));
  }
}