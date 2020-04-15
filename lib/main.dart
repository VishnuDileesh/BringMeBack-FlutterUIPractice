import 'package:flutter/material.dart';
import 'screens/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bring Me Back',
			debugShowCheckedModeBanner: false,
      theme: ThemeData(
				fontFamily: "Muli",
      ),
      home: HomeScreen(),
    );
  }
}
