import 'package:assignment_system/view/my_start.dart';
import 'package:flutter/material.dart';

import 'global.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[70],


      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyStart(),

      },
    );
  }
}
