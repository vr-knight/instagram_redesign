import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/settings_model.dart';
import 'package:instagram_redesign/style_guide.dart';

class SettingsScreen extends StatelessWidget {
  static const id = 'settingsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 15.0,
                  top: 10,
                  bottom: 10.0,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: options.map((opts) {
                  return Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(bottom: 5.0, top: 5.0, right: 15.0),
                        child: opts['icon'],
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: opts['helperText'],
                      ),
                    ],
                  );
                }).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Text(
                        'Logins',
                        style: kPeopleId.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Text(
                        'Set-up multi-account login',
                        style: kPeopleId.copyWith(color: Colors.blueAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Text(
                        'Add account',
                        style: kPeopleId.copyWith(color: Colors.blueAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Text(
                        'Log out cami_ly.',
                        style: kPeopleId.copyWith(color: Colors.blueAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Text(
                        'Log out of all accounts',
                        style: kPeopleId.copyWith(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
