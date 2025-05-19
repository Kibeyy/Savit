import 'package:expense_tracker/features/auth/screens/login_screen.dart';
import 'package:expense_tracker/features/auth/widgets/normal_input.dart';
import 'package:expense_tracker/features/auth/widgets/password_input.dart';
import 'package:expense_tracker/features/onboarding/screens/onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/automatedfields_onboarding.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController newPassController = TextEditingController();
    TextEditingController repeatedPassController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //head back to onboarding
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return Onboarding();
              },));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 5,),
              FittedBox(
                child: Text("Your turn to fill your valuable credentials here to start!",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'ShareTech'
                  ),
                ),
              ),
              SizedBox(height: 25,),
              //placeholder for the username
              //username input
              Text("Username",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 5,),
              //input field for the username
              NormalInput(
                  hintText: "Username",
                  controller: usernameController
              ),
              //email input
              SizedBox(height: 10,),
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
              SizedBox(height: 10,),
              //new password input field
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
                  controller: newPassController),
              //repeated passinput
              SizedBox(height: 10,),
              //new password input field
              Text("Confirm password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'ShareTech'
                ),
              ),
              SizedBox(height: 5,),
              //input field for the username
              PasswordInput(hintText: "Confirm password",
                  controller: repeatedPassController),
              SizedBox(height: 20,),

              //sign up button
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
                    child: Text("Signup",style: TextStyle(color: Colors.white),),),
              ),
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
                      return LoginScreen();
                    },));

                  },
                  child: Text("Already have an account? LOGIN",),),
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

