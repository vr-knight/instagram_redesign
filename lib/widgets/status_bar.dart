import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/status_model.dart';

import '../style_guide.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: kShadowColor,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 5.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/c.jpg'),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Add Story'),
                    ],
                  ),
                ),
                Positioned(
                  right: 3.0,
                  bottom: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: kScaffoldBackgroundColor, width: 3.0),
                      borderRadius: BorderRadius.circular(15.0),
                      color: kButtonColor,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: status.map((people) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 8.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(people.imagePath),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        people.name,
                        textScaleFactor: 1.05,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
