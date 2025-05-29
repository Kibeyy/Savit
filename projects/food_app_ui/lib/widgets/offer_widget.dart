import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Stack(

              alignment: Alignment.center,
              children: [
               Column(
                 children: [
                   Text("Up to ",
                       style: TextStyle(
                         fontFamily:'AlfaSlabOne',
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         color: Colors.white,
                       )),

                   FittedBox(
                     child: Text("50%    off ",
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                           fontFamily:'AlfaSlabOne',
                           fontSize: 70,
                         letterSpacing: 3,
                         color: Colors.white,
                       ),
                     ),
                   ),
                   FittedBox(
                     child: Text("Your first 2 orders ",
                       style: TextStyle(
                         fontFamily:'AlfaSlabOne',
                           fontWeight: FontWeight.bold,
                           fontSize: 50,
                         color: Colors.white,
                       ),
                     ),
                   ),
                   FittedBox(
                     child: Text("No promo needed, offer applied at checkout",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 50
                       ),
                     ),
                   )
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 16,bottom: 20),
                  child: Image.asset('assets/images/burger.png',width: 150,height: 150,),
                )

              ],


            ),
          ),
        ),
      ),
    );
  }
}
