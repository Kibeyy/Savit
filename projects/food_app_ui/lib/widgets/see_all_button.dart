import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector
      (
      onTap: () {

      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Center(
          child: Container(
            color: Colors.lightBlue[50],
            width: 50,height: 25,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("See all",style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
