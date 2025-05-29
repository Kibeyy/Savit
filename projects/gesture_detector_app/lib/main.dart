import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GESTURE DETECTIONS")
          ,
        ),
        body: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            print("Image Clicked!");
          },
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('assets/images/image.jpg',
                  width: sliderValue,
                  height: sliderValue,
                ),
                Divider(height: 20,),
                Slider(
                    value: sliderValue,
                    min: 50,
                    max: 300,
                    divisions: 10,

                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    },
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
