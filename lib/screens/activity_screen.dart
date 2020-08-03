import 'package:flutter/material.dart';

import '../style_guide.dart';

class ActivityScreen extends StatelessWidget {
  static const id = 'activityScreen';

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
              padding: EdgeInsets.only(left: 15),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0.0, 1.0),
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Activity',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25.0,
                            //backgroundColor: Colors.white,
                            backgroundImage: AssetImage('images/e.jpg'),
                          ),
                          Positioned(
                            left: 30,
                            bottom: 30.0,
                            child: Container(
                              height: 22,
                              width: 22,
//                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: kScaffoldBackgroundColor, width:2.5),

                                color: Colors.red,
                              ),
                              child: Center(child: Text('8'))
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Follow requests'),
                          Text(
                            'Approve or ignore requests',
                            style: TextStyle(color: kButtonColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text('Yesterday',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'john.hopper, vaanya_gilbert and 30 others',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('started following you.'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text('This Week',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18.0,
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/a.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lorem ipsum dolor sit amet fdsaqw,'),
                          Text('Suspendisse vulputate lorem.'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),],
              ),
            )
          ],
        ),
      ),
    );
  }
}
