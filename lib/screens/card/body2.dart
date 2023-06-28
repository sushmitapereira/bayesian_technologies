import 'dart:ui';

import 'package:bayesian_technologies/screens/card/server.dart';

import 'package:flutter/material.dart';



class Body2 extends StatelessWidget {
  Widget build(BuildContext context) {
    // Future opendialog() => showDialog(
    //       context: context,
    //       builder: (context) => AlertDialog(
    //         title: Text('Type Below'),
    //         content: TextField(
    //           decoration: InputDecoration(hintText: 'Comment'),
    //         ),
    //         actions: [
    //           TextButton(
    //             onPressed: () {},
    //             child: Text('Add'),
    //           )
    //         ],
    //       ),
    //     );

    final TextEditingController _searchController = TextEditingController();
    final TextEditingController _servercontroller = TextEditingController();
    return Column(children: <Widget>[
      Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cardproject.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        // Use a Material design search bar
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
           hintText: 'Search...',
       
            // Add a clear button to the search bar
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => _searchController.clear(),
            ),
            // Add a search icon or button to the search bar
            prefixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Perform the search here
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      CommentsScreen(),
      SizedBox(height: 20),
      
      Text(commentValue),

      
    ]);
  }
}
