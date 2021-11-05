
import 'package:flutter/material.dart';
import 'tab_page/home/home_page.dart';
import 'tab_page/flag_page.dart';
import 'tab_page/menu_page.dart';
import 'tab_page/notification_page.dart';
import 'tab_page/people_page.dart';
import 'tab_page/watch_page.dart';
class AppBarCustom extends StatefulWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              title: Text('facebook',
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),),
              backgroundColor: Colors.white,
              actions: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: (){},
                    color: Colors.black,
                    iconSize: 30,
                    icon: Icon(Icons.search),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: (){},
                    color: Colors.black,
                    iconSize: 30,
                    icon: Icon(Icons.message),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
              ],
              bottom: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                tabs: choices.map<Widget>((Choice choice) {
                  return Tab(
                    icon: Icon(choice.icon,),
                  );
                }).toList(),
              ),
            ),
            body: TabBarView(
              children: [
                HomePage(),
                WatchPage(),
                PeoplePage(),
                FlagPage(),
                NotificationPage(),
                MenuPage()
              ],
          ),
        ));
  }
}
class Choice{
  final IconData icon;
  const Choice(this.icon);
}
const List<Choice> choices=<Choice>[
  Choice(Icons.home),
  Choice(Icons.ondemand_video_sharp),
  Choice(Icons.people_alt_outlined),
  Choice(Icons.flag_outlined),
  Choice(Icons.notifications_none_outlined),
  Choice(Icons.menu_outlined)
];

