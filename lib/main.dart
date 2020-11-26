import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:twitter_video_sort/BusinessLogic/FirebaseAuth.dart';

import 'package:twitter_video_sort/UI/LandingPage/LandingPage.dart';
import 'package:twitter_video_sort/UI/SignInPage/SignInPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _first;

    FirebaseAuthModel().checkAuth();
    if (FirebaseAuthModel().isLoggedIn == false) {
      _first = SignInPage();
    } else {
      _first = LandingPage();
    }

    return ChangeNotifierProvider(
        create: (context) => FirebaseAuthModel(),
        child: MaterialApp(
          title: 'Twitter Videos Sorter',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: _first,
        ));
  }
}
