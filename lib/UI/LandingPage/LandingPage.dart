import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
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
          centerTitle: true,
          title: Icon(Icons.auto_awesome),
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Home"),
              ),
              Tab(child: Text("Boards")),
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

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "Commonly Used",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          ),
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(24),
        ),
        Container(
            child: Row(
          children: [],
        )),
        Container(
          child: Text(
            "Favorites",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          ),
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(24),
        ),
      ],
    );
  }
}

class Boards extends StatefulWidget {
  Boards({Key key}) : super(key: key);

  @override
  _BoardsState createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(),
        Container(
          child: Text(
            "Other Boards",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          ),
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(24),
        )
      ],
    );
  }
}

////Code below unused

//TODO: loading animation
class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("LOADING..."));
  }
}

//TODO: error page with retry button
class SomethingWentWrong extends StatelessWidget {
  const SomethingWentWrong({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Something Went Wrong..."));
  }
}
