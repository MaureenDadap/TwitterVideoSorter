import 'package:flutter/material.dart';
import 'package:twitter_video_sort/BusinessLogic/FirebaseAuth.dart';

import 'Buttons.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.pink[50],
                filled: true),
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.pink[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 24),
          GradientButton(
              child: Text(
                'SIGN IN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.redAccent[400], Colors.pink[700]]),
              onPressed: () {
                FirebaseAuthLogin().signIn();
              })
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.pink[50],
                filled: true),
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.pink[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password',
                fillColor: Colors.pink[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 24),
          GradientButton(
            child: Text(
              'REGISTER',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.redAccent[400], Colors.pink[700]]),
            //onPressed:
          )
        ],
      ),
    );
  }
}
