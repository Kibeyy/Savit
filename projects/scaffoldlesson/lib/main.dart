import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text(
        "HOMEPAGE",
        style: TextStyle(
          letterSpacing: 2.0,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      
    ),
    body: Center(
      child: Text(
        "Body text will be stored here!",
        style: TextStyle(
          fontSize: 20.0,
          letterSpacing: 3.0
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.teal,
      ),
  ),
));


