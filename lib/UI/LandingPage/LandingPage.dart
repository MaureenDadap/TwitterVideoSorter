import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_video_sort/UI/LandingPage/Boards.dart';
import 'package:twitter_video_sort/UI/LandingPage/Dashboard.dart';
import 'package:twitter_video_sort/UI/SettingsPage/SettingsPage.dart';
import 'package:twitter_video_sort/UI/SignInPage/SignInPage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   if (Provider.of<FirebaseAuthModel>(context).isLoggedIn == null) {
  //     return SignInPage();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Twitter Boards",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: Icon(Icons.settings),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
            )
          ],
          iconTheme: IconThemeData(color: Colors.black87),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Home", style: TextStyle(color: Colors.black87)),
              ),
              Tab(
                child: Text("Boards", style: TextStyle(color: Colors.black87)),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Dashboard(),
          Boards(),
        ]),
      ),
    );
  }
}
