import 'package:bayesian_technologies/my_flutter_app_icons.dart';
import 'package:bayesian_technologies/screens/card/addcard.dart';
import 'package:bayesian_technologies/screens/card/body2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bayesian_technologies/screens/card/body2.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           iconcolor,
            Colors.white,
          ],
          
        ),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(MyFlutterApp.home),
            onPressed: () {

            },
          ),
          IconButton(
            color: iconcolor,
            icon: Icon(MyFlutterApp.credit_card),
            onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCardScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(MyFlutterApp.newspaper),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(MyFlutterApp.user),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
