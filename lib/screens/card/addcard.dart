import 'package:flutter/material.dart';

import 'package:bayesian_technologies/bottom_navigation.dart';
import 'body2.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        
        centerTitle: true,
       title:Text(
  'Add Comments',
  style: TextStyle(color: Colors.black), //<-- SEE HERE
  ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(30),
    ),
        ),
      ),
      body: Body2(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
