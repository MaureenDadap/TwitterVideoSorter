import 'package:flutter/material.dart';
import 'package:twitter_video_sort/BusinessLogic/FirebaseAuth.dart';
import 'package:twitter_video_sort/UI/Components/Gallery.dart';

class NewBoardPage extends StatelessWidget {
  const NewBoardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Board",
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
                  "Add to new board",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                ),
              ),
              Gallery(),
            ],
          ),
        ),
      ),
    );
  }
}
