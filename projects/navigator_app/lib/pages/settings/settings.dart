import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {

              }, child: Text("LOG OUT")),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
