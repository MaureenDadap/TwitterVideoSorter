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
      }

      notifyListeners();
    });
  }
}

class FirebaseAuthLogin {
  
}
