import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCard());
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text('Profile Card',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Center(


          child: Container(

            width: 300,
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [

                  ClipOval(

                    child: Image.asset('assets/images/me.jpg',
                      fit:BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                  ),
                Divider(color: Colors.white54, thickness: 1),

                SizedBox(height: 50,),
                Text("Name: Collins Kibe",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20,

                  ),
                ),
                SizedBox(height: 20,),
                Text("Occupation: Android Developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                    fontSize: 17,

                  ),
                ),


              ],



            ),
          ),
        ),
      ),
    );
  }
}

