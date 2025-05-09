import 'package:better_loginpage/data/notifiers.dart';
import 'package:better_loginpage/main.dart';
import 'package:better_loginpage/presentation/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController pw = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    pw.dispose();
    username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isPwVisible, builder: (context, PwVisible, child) {
      return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "Hero1",
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Lottie.asset('assets/lottie/login.json'),
                      ),
                    ),

                    SizedBox(height: 150,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          TextField(
                            controller: username,
                            onEditingComplete: () {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: () {

                              }, icon: Icon(Icons.person)),
                              hintText: "Username",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ) ,

                            ),
                          ),
                          SizedBox(height: 15,),
                          TextField(
                            maxLines: 1,
                            controller: email,
                            onEditingComplete: () {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Email",
                              suffixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ) ,

                            ),
                          ),
                          SizedBox(height: 15,),
                          TextField(
                            controller: pw,
                            obscureText: PwVisible? false:true,
                            onEditingComplete: () {
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: () {
                                isPwVisible.value = !isPwVisible.value;

                              }, icon: Icon(PwVisible? Icons.visibility_off:Icons.visibility)),
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ) ,

                            ),
                          ),
                          SizedBox(height: 50,),

                          FilledButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Home();
                                    },));

                              },
                              style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8), // Smaller number = less rounded
                                  ),
                                  minimumSize: Size(double.infinity, 50)
                              ),
                              child: Text("SIGN UP")),
                          SizedBox(height: 10,),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Signin();
                                    },));

                              },
                              style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8), // Smaller number = less rounded
                                  ),
                                  minimumSize: Size(double.infinity, 50)
                              ),
                              child: Text("LOGIN"))

                        ],
                      ),
                    )
                  ],

                ),
              ),
            ),
          ),
        ),

      );

        },);

  }

}
