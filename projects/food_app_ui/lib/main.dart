import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/location_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: LocationIcon()),
        title: Text("Munchner Waisenhaus",
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.bold,

          ),
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

