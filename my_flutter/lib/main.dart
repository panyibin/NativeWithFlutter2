import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',

      // home: FirstPage(),
      // initialRoute: '/',
      routes: {
        '/' : (context)=> FirstPage(),
        '/Second' : (context)=> SecondPage(),
        '/Third': (context) => ThirdPage()
      },
    );
  }
}
