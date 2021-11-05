import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page_newfeed.dart';
import 'home_page_status.dart';
import 'home_page_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 110,
              child: HomePageStatus(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            height: 240,
            child: HomePageStory(),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: HomePageNewFeed(),
          ),
        ],
      ),
    );
  }
}
