import 'package:flutter/material.dart';

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