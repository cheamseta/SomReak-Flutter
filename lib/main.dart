
import 'package:flutter/material.dart';

import 'Screens/home-screen.dart';


void main() => runApp(
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: MainPage(),
  )
);

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }

 
}
