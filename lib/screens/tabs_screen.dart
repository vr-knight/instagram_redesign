import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/activity_screen.dart';
import 'package:instagram_redesign/screens/drawer_screen.dart';
import 'package:instagram_redesign/screens/home_screen.dart';
import 'package:instagram_redesign/screens/profile_screen.dart';
import 'package:instagram_redesign/screens/search_screen.dart';
import 'package:instagram_redesign/screens/upload_screen.dart';
import 'package:instagram_redesign/style_guide.dart';

class TabsScreen extends StatefulWidget {
  static const id = 'tabsScreen';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    UploadScreen(),
    ActivityScreen(),
    DrawerScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kSelectedBottomBarItemColor,
        unselectedItemColor: kButtonColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Activity'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          )
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
