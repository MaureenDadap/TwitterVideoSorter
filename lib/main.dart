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
    FirebaseAuthModel().listenAuthState();
    if (FirebaseAuthModel().isLoggedIn == false) {
      _first = SignInPage();
    } else {
      _first = LandingPage();
    }
    print(FirebaseAuthModel().isLoggedIn);

    return ChangeNotifierProvider(
        create: (context) => FirebaseAuthModel(),
        child: MaterialApp(
          title: 'Twitter Videos Sorter',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: _first, //TODO: change back to _first
        ));
  }
}

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
