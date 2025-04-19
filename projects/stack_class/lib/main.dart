import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack_Lesson'),
                  ),
        body: Stack(
          children: [
            Image.asset('assets/images/car2.jpg',
            fit: BoxFit.cover,
            height: 300,width: double.infinity,),
            SizedBox(
              height: 300,
                child: Center(child: Text('Text on Image',style: TextStyle(fontSize: 30,color: Colors.red),)))

          ],
        ),
      ),
    );
  }
}

