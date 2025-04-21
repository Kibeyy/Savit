import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Header"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height:100,
                color: Colors.amberAccent,

              ),
              Container(
                width: 300,
                height:100 ,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
