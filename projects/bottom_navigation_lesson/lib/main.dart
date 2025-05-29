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
        colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: Colors.black38)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BtmNavApp"),
          leading: Icon(Icons.login),
        ),
        bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: ("Home")),
              NavigationDestination(icon: Icon(Icons.person), label: ("Profile"))
            ]
        ),
      ),
    );
  }
}

