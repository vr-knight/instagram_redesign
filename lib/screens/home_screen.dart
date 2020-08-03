import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/camera_screen.dart';
import 'package:instagram_redesign/screens/message_screen.dart';
import 'package:instagram_redesign/screens/upload_screen.dart';
import 'package:instagram_redesign/widgets/posts.dart';
import 'package:instagram_redesign/widgets/status_bar.dart';

import '../style_guide.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, bottom: 5),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              //padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: kShadowColor,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo_camera),
                    onPressed: () {
                      Navigator.pushNamed(context, CameraScreen.id);
                    },
                    color: Colors.white,
                  ),
                  Image.asset(
                    'images/Instagram.png',
                    height: MediaQuery.of(context).size.height * 0.050,
                  ),
                  IconButton(
                    icon: Icon(Icons.near_me),
                    onPressed: () {
                      Navigator.pushNamed(context, MessageScreen.id);
                    },
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            StatusBar(),
            Posts(),
            Posts(),
          ],
        ),
      ),
    );
  }
}
