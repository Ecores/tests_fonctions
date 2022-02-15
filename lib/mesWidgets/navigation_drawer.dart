import 'package:flutter/material.dart';

import '../ma_navigation.dart';
import 'DrawerItems.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key ? navigationDrawerKey}) : super(key: navigationDrawerKey);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  int _selectedIndex = 0;

  final drawerItems = [
    DrawerItem("Aeroplane", Icons.local_airport),
    DrawerItem("Pizza", Icons.local_pizza),
    DrawerItem("Coffee", Icons.local_cafe)
  ];

  _getDrawerItemScreen(int pos) {
    return MaNavigation(drawerItem: drawerItems[_selectedIndex]);
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
      _getDrawerItemScreen(_selectedIndex);
    });
    Navigator.of(context).pop(); // close the drawer
//    Navigator.push(
//      context,
//      new MaterialPageRoute(
//        builder: (context) => _getDrawerItemScreen(_selectedIndex),
//      ),
//    );
  }


  @override
  Widget build(BuildContext context) {
    var drawerOptions = [];
    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(
          d.title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
        selected: i == _selectedIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text(
                  "Yuvraj Pandey",
                  style: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: Text(
                  "yuvrajn.pandey@gmail.com",
                  style: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                )),
            Column(
                children: <Widget> [
                  ListTile(
                    leading: Icon(d.icon),
                    title: Text(
                      d.title,
                      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                    selected: i == _selectedIndex,
                    onTap: () => _onSelectItem(i),
                  ),



        ])
          ],
        ),
      ),
      body: _getDrawerItemScreen(_selectedIndex),
    );
  }
}