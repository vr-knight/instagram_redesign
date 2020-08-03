import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/activity_screen.dart';
import 'package:instagram_redesign/screens/camera_screen.dart';
import 'package:instagram_redesign/screens/drawer_screen.dart';
import 'package:instagram_redesign/screens/home_screen.dart';
import 'package:instagram_redesign/screens/message_screen.dart';
import 'package:instagram_redesign/screens/profile_screen.dart';
import 'package:instagram_redesign/screens/search_screen.dart';
import 'package:instagram_redesign/screens/settings_screen.dart';
import 'package:instagram_redesign/screens/tabs_screen.dart';
import 'package:instagram_redesign/screens/upload_screen.dart';
import 'package:instagram_redesign/style_guide.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async{
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        canvasColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Instagram Redesign',
      initialRoute: TabsScreen.id,
      routes: {
        ActivityScreen.id: (context) => ActivityScreen(),
        MessageScreen.id: (context) => MessageScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        UploadScreen.id: (context) => UploadScreen(),
        TabsScreen.id: (context) => TabsScreen(),
        DrawerScreen.id: (context) => DrawerScreen(),
        SettingsScreen.id:(context)=>SettingsScreen(),
        CameraScreen.id:(context)=>CameraScreen(cameras),
      },
    );
  }
}
