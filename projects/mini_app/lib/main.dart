import 'package:better_loginpage/data/notifiers.dart';
import 'package:better_loginpage/presentation/screens/signin.dart';
import 'package:better_loginpage/presentation/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeOn, builder: (context, isDarkMode, child) {
         return MaterialApp(
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.indigo,
                  brightness: isDarkMode? Brightness.dark : Brightness.light
              )
          ),
          debugShowCheckedModeBanner: false,
          home: Signin(),
        );

    },);
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  isDarkModeOn.value = !isDarkModeOn.value;

                },
                icon: Icon(isDarkModeOn.value? Icons.light_mode : Icons.dark_mode  ))
          ],
          title: Text("HOME SCREEN",
            style: TextStyle(
                letterSpacing: 5,
                fontWeight: FontWeight.bold

            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                  child: DrawerHeader(
                    decoration:BoxDecoration(color: Colors.indigo) ,
                      child: Text("Collins Kibe",
                        style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 3,fontSize: 25),),

                  )),
              ListTile(
                title: Text("Logout"),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Signin();
                          },));
                    },
                    icon: Icon(Icons.logout)),
              )
            ],
          ),
        ),
        body: Center(
          child: FittedBox(
            child: Text("Welcome home ,ralax!!!",
              style: TextStyle(
                  letterSpacing: 10,
                  fontWeight: FontWeight.bold,
                  fontSize: 30

              ),
            ),
          ),
        ),
      );

  }

}
