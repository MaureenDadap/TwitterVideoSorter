import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Sign In",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        SignInForm(),
      ]),
    );
  }
}

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
            decoration: InputDecoration(hintText: "email"),
            validator: (value) {
              // validation logic
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "password"),
            validator: (value) {
              // validation logic
            },
          ),
          RaisedButton(
            child: Text('Submit'),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                // text in form is valid
              }
            },
          ),
        ],
      ),
    );
  }
}
