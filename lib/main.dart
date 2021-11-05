import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter2/page/Status_page.dart';
import 'package:test_flutter2/page/message_page.dart';
import 'package:test_flutter2/page/profile_page.dart';
import 'package:test_flutter2/page/search_page.dart';
import 'app_bar_custom.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/SearchPage':(context)=> SearchPage(),
          '/MessagePage':(context)=>MessagePage(),
          '/StatusPage':(context)=>StatusPage(),
          '/ProfilePage':(context)=>ProfilePage(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey,
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.white,
                ))
        ),
        debugShowCheckedModeBanner: false,
        home:AppBarCustom()
    );
  }
}