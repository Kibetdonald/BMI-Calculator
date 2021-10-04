
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
       color: HexColor("#FCC91C"),
      theme: ThemeData(
        
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}



