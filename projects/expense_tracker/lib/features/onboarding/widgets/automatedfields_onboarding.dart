import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AutomatedFieldsinfo extends StatelessWidget {
  const AutomatedFieldsinfo({super.key});

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
                Lottie.asset('assets/lottie/cashphone.json')

            ),
            SizedBox(height: 50,),
            Text("Automated fields to add",
              style: TextStyle(
                letterSpacing: 3,
                  fontFamily: 'ShareTech',
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            SizedBox(height: 20,),
            Text("There are automated fields to choose\nand enter your expenses by selecting\n                     the category",
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
