import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_bar_custom.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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