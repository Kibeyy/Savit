import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: Colors.blue)
      ),
      home: Scaffold(

        appBar: AppBar(
          leading: Icon(Icons.notification_add_rounded),
          title: Text("Icons"),
          actions: [Icon(Icons.access_alarm)],
        ),
      ),
    );
  }
}

