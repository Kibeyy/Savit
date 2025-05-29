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
  String? selectedItem = "Home";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BUTTONS"),
          centerTitle: true,
        ),
        body: Padding(padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Drop down button"),
                  DropdownButton(
                    value: selectedItem,
                      items: [

                        DropdownMenuItem(
                            value: "Home",
                            child: Text("Home"),
                        ),
                        DropdownMenuItem(
                          value: "Profile",
                          child: Text("Profile"),
                        ),
                        DropdownMenuItem(
                          value: "Settings",
                          child: Text("Settings"),
                        )
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          selectedItem = value;
                        });
                      },
                  ),
                  Text("Filled button"),
                  FilledButton(onPressed: () {

                  }, child: Text("LOGIN")),
                  SizedBox(height: 10,),
                  Text("Outlined Button"),
                  OutlinedButton(onPressed: () {

                  }, child: Text("LOGIN")),
                  SizedBox(height: 10,),
                  Text("Elevated button"),
                  ElevatedButton(onPressed: () {

                  }, child: Text("LOGIN")),
                  SizedBox(height: 10,),
                  Text("Text button"),
                  TextButton(onPressed: () {

                  }, child: Text("LOGIN")),
                  SizedBox(height: 10,),

                ],
              ),
            ) ,
        ),
      ),
    );
  }
}
