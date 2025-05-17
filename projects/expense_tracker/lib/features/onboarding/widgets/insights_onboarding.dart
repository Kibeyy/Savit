import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InsightsOnboarding extends StatelessWidget {
  const InsightsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,height: 200,
                child:
                Lottie.asset('assets/lottie/cash.json')

            ),
            SizedBox(height: 50,),
            FittedBox(
              child: Text("Get Insights,Download it",
                style: TextStyle(
                    letterSpacing: 3,
                    fontFamily: 'ShareTech',
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Get insights according to your expenses\n                 and share them",
              style: TextStyle(
                fontFamily: 'ShareTech',
                fontSize: 17,

              ),
            )
          ],
        ),
      ),
    );
  }
}
