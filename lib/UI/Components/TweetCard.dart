import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Icon(Icons.video_collection),
            height: 128,
            width: 128,
          ),
          Container(
            child: Text(
              "All Media",
            ),
            margin: EdgeInsets.all(16),
          )
        ],
      ),
    );
  }
}
