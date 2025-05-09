import 'package:better_loginpage/data/notifiers.dart';
import 'package:better_loginpage/main.dart';
import 'package:better_loginpage/presentation/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController email = TextEditingController();
  TextEditingController pw = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    pw.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isPwVisible,
      builder: (context, PwVisible, child) {
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
                          width: 300,
                          height: 300,
                          child: Lottie.asset('assets/lottie/login.json'),
                        ),
                      ),

                      SizedBox(height: 50,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
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
                                }, icon: Icon(PwVisible? Icons.visibility_off:Icons.visibility )),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ) ,

                              ),
                            ),
                            SizedBox(height: 30,),
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
                                child: Text("LOGIN")),
                            SizedBox(height: 10,),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return Signup();
                                      },));

                                },
                                style: FilledButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8), // Smaller number = less rounded
                                    ),
                                    minimumSize: Size(double.infinity, 50)
                                ),
                                child: Text("SIGN UP"))

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
