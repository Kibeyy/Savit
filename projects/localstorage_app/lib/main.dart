import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {

  await Hive.initFlutter();
  var box = await Hive.openBox("myBox");

  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Home(),
     );
   }
 }

 class Home extends StatelessWidget {
   const Home({super.key});

   @override
   Widget build(BuildContext context) {
     final _myBox = Hive.box("myBox");
     return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             FilledButton(
                 onPressed: () {
                   _myBox.put(1, "Collins");
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                       behavior: SnackBarBehavior.floating,
                       content: Text("${_myBox.get(1)} was added"),
                     ),
                   );

                 },
                 child: Text("ADD ITEM")
             ),
             FilledButton(
                 onPressed: () {

                 },
                 child: Text("GET ITEM")
             ),
             FilledButton(
                 onPressed: () {

                 },
                 child: Text("DELETE ITEM")
             )

           ],
         ),
       ),

     );
   }
 }

