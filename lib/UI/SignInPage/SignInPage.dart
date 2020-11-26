import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_video_sort/UI/Components/Buttons.dart';
import 'package:twitter_video_sort/UI/Components/Forms.dart';
import 'package:twitter_video_sort/UI/RegisterPage.dart/RegisterPage.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 128),
              Text(
                "Sign In",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 24),
              SignInForm(),
              SizedBox(height: 24),
              Text(
                'or',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.pink[400], fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: RaisedButton(
                    child: Text('Google'),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: RaisedButton(
                    child: Text('Twitter'),
                    //child: Icon(Icons.group),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ]),
              SizedBox(height: 36),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? "),
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    child: Text("Register Here",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
