import 'package:bayesian_technologies/bottom_navigation.dart';
import 'package:bayesian_technologies/screens/card/addcard.dart';
import 'package:flutter/material.dart';
import 'screens/card/addcard.dart';

void main() async{
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: AddCardScreen(),
     
    );
  }
}