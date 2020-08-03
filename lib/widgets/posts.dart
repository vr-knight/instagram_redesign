import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/style_guide.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int _currentIndex = 0;
  List imgList = [
    'images/z1.jpg',
    'images/z2.jpg',
    'images/z3.jpg',
    'images/z4.jpg',
    'images/z5.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = list.length - 1; i >= 0; i--) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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
      padding: EdgeInsets.only(top: 5.0),
      child: Card(
        elevation: 0.0,
        color: kScaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                CircleAvatar(
                  radius: 15.0,
                  backgroundImage: AssetImage('images/z4.jpg'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  'Victoria',
                  style: kPeopleId,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            CarouselSlider(
              height: MediaQuery.of(context).size.height * 0.52,
              scrollDirection: Axis.horizontal,
              initialPage: 4,
              reverse: true,
              enableInfiniteScroll: false,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: imgList.map((img) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          //height: MediaQuery.of(context).size.width*0.85,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                FaIcon(FontAwesomeIcons.comment),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Icon(Icons.near_me),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.width * 0.02,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.white,
                      ),
                    );
                  }),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.28),
                Icon(Icons.bookmark_border),
              ],
            ),
            PostDetail(),
          ],
        ),
      ),
    );
  }
}

class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Text(
            '21,973 Likes',
            textScaleFactor: 1.1,
          ),
          SizedBox(height: 5),
          Text(
            'View all 678 comments',
            style: TextStyle(color: Colors.blueGrey),
          ),
          SizedBox(height: 5),
          Text(
            '1 hr ago',
            style: TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
