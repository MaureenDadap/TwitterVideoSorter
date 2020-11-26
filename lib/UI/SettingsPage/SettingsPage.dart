import 'package:flutter/material.dart';
import 'package:twitter_video_sort/BusinessLogic/FirebaseAuth.dart';
import 'package:twitter_video_sort/UI/SignInPage/SignInPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                  child: RaisedButton(
                child: Text("Log Out"),
                onPressed: () {
                  FirebaseAuthLogOut().logOut();
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignInPage()), (route) => false);
                  //Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
