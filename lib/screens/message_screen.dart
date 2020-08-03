import 'package:flutter/material.dart';

import '../style_guide.dart';

class MessageScreen extends StatelessWidget {
  static const id = 'messageScreen';


  @override
  Widget build(BuildContext context) {

    final Widget msg = Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('images/f.jpg'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'PeopleId',
              style: kPeopleId,
            ),
            Text(
              'Message lorem ipsum datum blum',
              style: TextStyle(color: Colors.blueGrey[400]),
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.15,),
        Icon(Icons.photo_camera)
      ],
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          elevation: 0,
          title: Text('vr_knight'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.videocam,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 8.0),
              child: Icon(
                Icons.mail_outline,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 15.0,
                  top: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: kButtonColor,
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              Text(
                'Messages',
                style: kPeopleId,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              msg,
            ],
          ),
        ),
      ),
    );
  }
}


