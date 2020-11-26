import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthModel extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoggedIn;

  Future<User> checkUserAuth() async {
    return FirebaseAuth.instance.currentUser;
  }

  void listenAuthState() async {
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

class FirebaseAuthLogOut {
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }
}

class FirebaseAuthLogin {
  String email;
  String password;

  FirebaseAuthLogin(String email, String password) {
    this.email = email;
    this.password = password;
  }

  Future<void> signInWithEmail() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
          
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
