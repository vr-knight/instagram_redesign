import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/profile_post_model.dart';

import 'home_screen.dart';

class UploadScreen extends StatelessWidget {
  static const id = 'uploadScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: Image.asset(
                'images/d.jpg',
                fit: BoxFit.cover,
              ),
            ),
            GridView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: posts.map((img) {
                return Container(
                  margin: EdgeInsets.all(3),
                  height: MediaQuery.of(context).size.width / 3.3,
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(
                      img.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.photo),title: Text('Gallery')),
        BottomNavigationBarItem(icon: Icon(Icons.camera),title: Text('Photo')),
        BottomNavigationBarItem(icon: Icon(Icons.videocam),title: Text('Video')),
      ],),
    );
  }
}
