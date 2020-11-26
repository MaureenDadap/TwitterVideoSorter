import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthModel extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoggedIn;

  void checkAuth() async {
    auth.authStateChanges().listen((User user) {
      if (user == null) {
        isLoggedIn = false;
      } else {
        isLoggedIn = true;
        print('user is logged in!');
      }

      notifyListeners();
    });
  }
}

class FirebaseAuthLogin {
  void signIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: "maureendadap@gmail.com", password: "12345678");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
