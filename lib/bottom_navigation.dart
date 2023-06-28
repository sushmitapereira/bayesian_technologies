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
         
     boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 2),
      ),
    ],
        
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
             iconSize: 50,
          icon: Image.asset('assets/images/home.PNG'),
            onPressed: () {

            },
          ),
          IconButton(
            color: iconcolor,
            iconSize: 50,
            icon: Image.asset('assets/images/card.PNG'),
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
             iconSize: 50,
            icon: Image.asset('assets/images/pc.PNG'),
            onPressed: () {},
          ),
          IconButton(
             iconSize: 50,
           icon: Image.asset('assets/images/profile image.PNG'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
