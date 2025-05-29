import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//   home: Scaffold(
//     appBar: AppBar(
//       title: Text(
//         "HOMEPAGE",
//         style: TextStyle(
//           letterSpacing: 2.0,
//           fontSize: 30.0,
//           fontWeight: FontWeight.bold
//         ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
      
//     ),
//     body: Center(
//       child: Text(
//         "Body text will be stored here!",
//         style: TextStyle(
//           fontSize: 20.0,
//           letterSpacing: 3.0
//         ),
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: (){},
//       backgroundColor: Colors.teal,
//       ),
//   ),
// ));

void main() => runApp(const home());

 class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Scaffold Lesson",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0
            ),
            ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(            
            color: Colors.blueGrey,          

          ),
          child: Center(
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(
                  child: Image.asset('assets/logo.png')
                ),
                
              ),
            ),
          ),
          
        ),
      ),
    );
  }
}


