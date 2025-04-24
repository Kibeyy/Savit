import 'package:flutter/material.dart';
import 'package:login_page_ui/main.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height, // 👈 Limits height
          color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: IntrinsicHeight( // 👈 Prevents extra white space at bottom
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person, size: 170, color: Colors.white),
                  SizedBox(height: 30),
                  Text("Welcome",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: 1, color: Colors.white)),
                  Text("Sign up to continue",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white)),
                  SizedBox(height: 15),
                  Text("UserName", style: TextStyle(letterSpacing: 1, color: Colors.white)),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder(), focusColor: Colors.white),
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        activeColor: Colors.white,
                        fillColor: WidgetStateColor.transparent,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text("Agree to terms and conditions", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
                      onPressed: () {
                        // Your signup logic here
                      },
                      child: Text("SIGN UP"),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Already have an account? Sign In"),
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
