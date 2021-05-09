import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'aboutme.dart';
import 'experience.dart';
import './constants.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: light_yellow,
          fontFamily: mainFont,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontFamily: mainFont,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              headline2: TextStyle(
                  fontFamily: mainFont,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              button: TextStyle(
                  fontFamily: mainFont,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black))),
      title: 'My Playground',
      home: MainPage(),
      initialRoute: "/about",
      routes: {
        "/about": (context) => Aboutme(),
        "/experience": (context) => Experience()
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Experience();
  }
}



