import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SavingsOnboarding extends StatelessWidget {
  const SavingsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,height: 200,
                  child:
                  Lottie.asset('assets/lottie/goals.json')

              ),
              SizedBox(height: 50,),
              FittedBox(
                child: Text("Set savings goals & track them",
                  style: TextStyle(
                      letterSpacing: 3,
                      fontFamily: 'ShareTech',
                      fontWeight: FontWeight.bold,
                      fontSize: 25

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("If you have saving goals then you can\n       set,save and track it everyday.",
                style: TextStyle(
                  fontFamily: 'ShareTech',
                  fontSize: 17,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
