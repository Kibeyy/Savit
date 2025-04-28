import 'package:drawer_app/data/notifiers.dart';
import 'package:drawer_app/navbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeOn, builder: (context, darkModeOn, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.blueGrey,
                  brightness: darkModeOn? Brightness.dark : Brightness.light
              )
          ),
          home: HomePage()
          //homepage
      );
    },);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeOn.value = !isDarkModeOn.value;
            },
            icon: Icon(
              isDarkModeOn.value ? Icons.light_mode : Icons.dark_mode,
            ),
          ),

        ],
        title: Text('Drawer App'),
        //backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: Column(

          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: SizedBox(width: double.infinity,
                  child: Text('Collins Kibe',style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            GestureDetector(
              onTap: () {
                print('Tile was clicked');
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("LogOut"),

              ),
            )
          ],
        ),

      ),
      bottomNavigationBar:MyNavigationBar()
    );
  }
}

