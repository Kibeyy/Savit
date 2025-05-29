import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  


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
      body: Padding(
          padding: EdgeInsets.all(20.0),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Lottie.asset('assets/lotties/login.json'),
              SizedBox(height: 200,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: FilledButton(

                    onPressed: () {

                    },
                  style: FilledButton.styleFrom(
                   // shape: CircleBorder(10.0),
                    minimumSize: Size(300, 40)
                  ),
                    child: Text("LOGIN"),
                ),
              ),
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextButton(

                  onPressed: () {

                  },
                  style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      minimumSize: Size(300, 40)
                  ),
                  child: Text("SIGN UP"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

