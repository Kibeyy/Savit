import 'package:expense_tracker/features/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/normal_input.dart';
import '../widgets/password_input.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          //arrow to lead you back to previous screen
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              //Main login text
              Text("Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 10,),
              //Email input field
              Text("Email",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 5,),
              //input field for the email
              NormalInput(
                  hintText: "Email",
                  controller: emailController
              ),
              //Password input
              Text("Password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 5,),
              //input field for the username
              PasswordInput(hintText: "Create password",
                  controller: passwordController),
              //forgot password text
              SizedBox(height:10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
              ),
              //login button
              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF5956F2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  ),
                  onPressed: () {
                    //Register user heere

                  },
                  child: Text("Login",style: TextStyle(color: Colors.white),),),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              //sign up button
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  ),
                  onPressed: () {
                    //Head to login screen
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignupScreen();
                    },));

                  },
                  child: Text("Don't have an account? Sign Up",),),
              ),
              SizedBox(height: 15,),

              FittedBox(child: Text("By continuing you agree terms of services and privacy policy",
                style: TextStyle(
                    fontFamily: 'ShareTech'
                ),))






            ],
          ),
        ),
      ),
    );
  }
}
