import 'package:flutter/material.dart';
import 'package:twitter_video_sort/UI/BoardPage/BoardPage.dart';
import 'package:twitter_video_sort/UI/BoardPage/NewBoardPage.dart';

class Boards extends StatefulWidget {
  Boards({Key key}) : super(key: key);

  @override
  _BoardsState createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
            child: Row(
              children: [AllMediaCard(), FavoritesCard()],
            ),
          ),
          Container(
            child: Text(
              "Other Boards",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(24),
          ),
          //SingleChildScrollView(child: GridView())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewBoardPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class FavoritesCard extends StatelessWidget {
  const FavoritesCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: Card(
        child: Column(
          children: [
            Container(
              child: Icon(Icons.favorite),
              height: 128,
              width: 128,
            ),
            Container(
              child: Text("Favorites"),
              margin: EdgeInsets.all(16),
            )
          ],
        ),
      ),
    );
  }
}

class AllMediaCard extends StatelessWidget {
  const AllMediaCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: Card(
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
      ),
    );
  }
}
