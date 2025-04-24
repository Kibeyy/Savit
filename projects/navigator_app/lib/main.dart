import 'package:flutter/material.dart';
import 'package:navigator_app/pages/settings/settings.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home:Home()
     );
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
                 Navigator.push(

                   context,
                   MaterialPageRoute(
                     builder: (context) {
                       return Settings();
                     },),);
               },
               icon: Icon(Icons.settings))
         ],
         title: Text('NAVIGATOR',style: TextStyle(
             fontWeight: FontWeight.bold,
             letterSpacing: 2
         ),),
       ),
       body: Container(
         child: Column(
           children: [
             Text("HomePage")
           ],
         ),

       ),

     );
   }
 }
