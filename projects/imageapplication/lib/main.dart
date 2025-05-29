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
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Images_Lesson",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Image loaded from assets folder'),
            Image.asset('assets/images/car2.jpg',
            fit: BoxFit.cover),
            SizedBox(height: 30,),
            Text('Image loaded from internet'),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7GAneSSJyTt_O-Nr1ySqLSXkqy6n74FugA&s',
            fit: BoxFit.cover
            ),


          ],
        )
      ),
    );
  }
}
