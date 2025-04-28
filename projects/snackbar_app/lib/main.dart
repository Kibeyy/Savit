import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
         title: Text("SNACKBAR",
           style: TextStyle(
               fontWeight: FontWeight.bold
           ) ,),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             FilledButton(
                 onPressed: () {
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                           behavior: SnackBarBehavior.floating,
                           content: Text("Logged out successfully"))
                   );
                 },
                 child: Text("Log Out"))
           ],
         ),
       ),
     );
   }
 }

