import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Home()
     );
   }
 }


 class Home extends StatelessWidget {
   const Home({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer: Drawer(
         child: Column(
           children: [
             DrawerHeader(
               decoration: BoxDecoration(color: Colors.blueGrey),
                 child: SizedBox(
                   width: double.infinity,
                   child: Text("Collins Kibe",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                 )),
             GestureDetector(
               onTap: () {
                 Navigator.of(context).pop();


                 ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                         behavior: SnackBarBehavior.floating,
                         content: Text("Logged out successfully"))
                 );
               },
               child: ListTile(
                 title: Text("Logout"),
                 trailing: Icon(Icons.logout),
               ),
             )

           ],
         ),
       ) ,
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
                   showDialog(
                     context: context,
                     builder: (context) {
                     return AlertDialog(
                       title: Text("Alert title!"),
                       content: Text("Alert content"),
                       actions: [
                         OutlinedButton(
                             onPressed: () {
                               Navigator.pop(context);
                             },
                             child: Text("Close"))
                       ],
                     );
                   },);
                 },
                 child: Text("Log Out"))
           ],
         ),
       ),
     );
   }
 }

