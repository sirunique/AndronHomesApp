import 'package:flutter/material.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/widgets/appBottomNavBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Andron Homes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.green,
        buttonColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: HomePage(),
      home: AppBottomNavBar(),
    );
  }
}