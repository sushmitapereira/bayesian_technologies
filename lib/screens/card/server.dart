import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Comment {
  final String title;
  final String thumbnailUrl;

  Comment({required this.title, required this.thumbnailUrl});
}

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  Comment? firstComment;

  Future<void> fetchComments() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      if (data.isNotEmpty) {
        setState(() {
          firstComment = Comment(
            title: data[0]['title'],
            thumbnailUrl: 'https://via.placeholder.com/150/${data[0]['id']}',
          );
        });
      }
    } else {
      throw Exception('Failed to fetch comments');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchComments();
  }

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
    // appBar: AppBar(
    //   title: Text('First Comment'),
    // ),
    return Container( 
     
      child:Padding(
      padding: EdgeInsets.all(20.0),
      
      child: Row(
        children: [
          
          if (firstComment != null) ...[
            CircleAvatar(
              backgroundImage: NetworkImage(firstComment!.thumbnailUrl),
              radius: 20,
            ),
            SizedBox(width: 10,),
            Text(
              firstComment!.title,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10),
            IconButton(onPressed: (){
             
            }, 
            icon: Icon(Icons.add))

          ],
        ],
      ),
    )
    );
   
  }
}
