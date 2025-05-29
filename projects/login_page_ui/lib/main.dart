import 'package:flutter/material.dart';
import 'package:login_page_ui/pages/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height, //
          color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: IntrinsicHeight( //
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person, size: 200, color: Colors.white),
                  SizedBox(height: 50),
                  Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: 1, color: Colors.white)),
                  Text("Sign in to continue", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white)),
                  SizedBox(height: 30),
                  Text("Email Address", style: TextStyle(letterSpacing: 1, color: Colors.white)),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder(), focusColor: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text("Password", style: TextStyle(letterSpacing: 1, color: Colors.white)),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder(), focusColor: Colors.white),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                      ),
                      onPressed: () {
                        // Your login logic here
                      },
                      child: Text("LOGIN"),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text("Don't have an account? Sign Up"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
