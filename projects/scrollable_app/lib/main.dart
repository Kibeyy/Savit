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
          title: Text("SCROLL APP",style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2
          ),),
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 240),
                    child: Text("Scroll down for more"),
                  ),
                  for(int i = 0;i<10;i++)
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Image.asset('assets/images/image.jpg'),
                    )



                ],

          ),
          ),
        ),
      ),
    );
  }
}

