import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("User_Input"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(

                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
