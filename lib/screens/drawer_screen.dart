import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/drawer_model.dart';
import 'package:instagram_redesign/screens/profile_screen.dart';
import 'package:instagram_redesign/screens/settings_screen.dart';

import '../style_guide.dart';

class DrawerScreen extends StatelessWidget {
  static const id = 'drawerScreen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomDrawer(),
        ProfileScreen(),
      ],
    );
  }
}

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 2,
              color: kShadowColor,
            ),
          ),
        ),
        padding: EdgeInsets.only(top: 18, bottom: 5),
        height: double.infinity,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: kShadowColor,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'cami_ly.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Column(
              children: drawerItems.map((item) {
                return ListTile(
                  leading: Icon(item['icon']),
                  title: Text(item['title']),
                );
              }).toList(),
            ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, SettingsScreen.id);
              },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
