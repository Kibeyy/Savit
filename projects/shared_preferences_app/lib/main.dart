import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_app/data/ValueNotifiers.dart';

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
  void initState() {

    super.initState();
    loadThemeState();
  }
  void loadThemeState() async{
    final prefs = await SharedPreferences.getInstance();
    final storedTheme = prefs.getBool('themeMode');
    if (storedTheme != null) {
      isDarkModeOn.value = storedTheme;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeOn,
        builder: (context, darkModeOn, child) {
          return MaterialApp(
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.green,
                    brightness: darkModeOn? Brightness.dark : Brightness.light)
            ),
            home: Home(),
          );
    });
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOCAL_STORAGE",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This will save the current theme state\nIn local storage\nWhether app in dark or light mode"),
            SizedBox(height: 50,),
            IconButton(

                onPressed: () async {
                  isDarkModeOn.value = !isDarkModeOn.value;
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('themeMode', isDarkModeOn.value);

                },
                icon: Icon(Icons.dark_mode,size: 100,))
          ],
        ),
      ),
    );
  }
}

