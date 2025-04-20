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
            title: Text('Drawer App'),
            backgroundColor: Colors.blueGrey,
          ),
          drawer: Drawer(
            child: Column(

              children: [
                DrawerHeader(
                    child: SizedBox(width: double.infinity,
            child: Text('Collins Kibe',style: TextStyle(fontWeight: FontWeight.bold),)),
                  decoration: BoxDecoration(color: Colors.blueGrey),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("LogOut"),

                )
              ],
            ),

          ),
        ),
    );
  }
}
